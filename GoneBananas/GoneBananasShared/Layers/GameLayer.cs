using System;
using System.Collections.Generic;
using System.Linq;
using Box2D.Collision.Shapes;
using Box2D.Common;
using Box2D.Dynamics;
using CocosDenshion;
using CocosSharp;

namespace GoneBananas
{
    public sealed class GameLayer : CCLayerColor
    {
        private const float MONKEY_SPEED = 350.0f;
        //private const float GAME_DURATION = 60.0f; // game ends after 60 seconds or when the monkey hits a ball, whichever comes first
        private const float VILLAIN_DURATION = 30.0f;
        private const float HEART_GAIN_DURATION = 60.0f;
        private const int INITIAL_HEARTS = 5;

        private const float MONKEY_REGULAR_SCALE = 0.25f;
        private const float MONKEY_GIANT_SCALE = 0.35f;

        private const int REGULAR_ROTATION_Y = 0;
        private const int INVERTED_ROTATION_Y = 180;

        private const float INSTANT_DURATION = 0.0f;
        private const float DELAYED_DURATION = 4.0f;

        // point to meter ratio for physics
        private const int PTM_RATIO = 16;

        //private float elapsedTime;
        private CCSprite monkey;
        private CCSprite villain;
        private List<CCSprite> visibleBananas;
        private List<CCSprite> hitBananas;

        // monkey walking animation
        private CCAnimation walkAnim;
        private CCRepeatForever walkRepeat;
        private CCCallFuncN walkAnimStop = new CCCallFuncN (node => node.StopAllActions ());

        // background sprite
        private CCSprite grass;

        // particles
        private CCParticleSun sun;

        // circle layered behind sun
        private CCDrawNode circleNode;

        // parallax node for clouds
        //private CCParallaxNode parallaxClouds;
            
        // define our banana rotation action
        private CCRotateBy rotateBanana = new CCRotateBy (0.8f, 360);

        // define our completion action to remove the banana once it hits the bottom of the screen
        private CCCallFuncN moveBananaComplete = new CCCallFuncN (node => node.RemoveFromParent ());

        // physics world
        private b2World world;
        
        // balls sprite batch
        private CCSpriteBatchNode ballsBatch;
        private CCTexture2D ballTexture;

        private CCLabelTtf scoreLabel;
        private CCLabelTtf heartLabel;

        private CCParticleFlower superpower;

        private int Points { get; set; }

        private int Hearts { get; set; }

        private int PointsMultiplier { get; set; }

        public GameLayer ()
        {
			var touchListener = new CCEventListenerTouchAllAtOnce ();
			touchListener.OnTouchesBegan = OnTouches;
			touchListener.OnTouchesMoved = OnTouches;
			touchListener.OnTouchesEnded = OnTouches;

            AddEventListener (touchListener, this);
            Color = new CCColor3B (CCColor4B.White);
            Opacity = 255;

            Hearts = INITIAL_HEARTS;
            PointsMultiplier = 1;

            visibleBananas = new List<CCSprite> ();
            hitBananas = new List<CCSprite> ();

            // batch node for physics balls
            ballsBatch = new CCSpriteBatchNode ("balls", 100);
            ballTexture = ballsBatch.Texture;
            AddChild (ballsBatch, 1, 1);
	
            AddGrass ();
            AddSun ();
            AddMonkey ();
            AddSuperpower();
            AddVillain();

            StartScheduling();

            ShowHeader();
        }

        private bool HasSuperpowers() {
            return this.superpower.Visible;
        }

		private void OnTouches (List<CCTouch> touches, CCEvent touchEvent)
        {
            var location = touches[0].LocationOnScreen;
            location = WorldToScreenspace (location);

            MoveMonkey(location);

            MoveSuperpower(location);

            MoveVillain(location);
        }

        private void MoveMonkey(CCPoint location)
        {
            monkey.StopAllActions();

            monkey.RotationY = (monkey.Position.X - location.X) > 0 ? REGULAR_ROTATION_Y : INVERTED_ROTATION_Y;

            var moveMonkey = new CCMoveTo(INSTANT_DURATION, location);
            monkey.RunAction(walkRepeat);
            monkey.RunActions(moveMonkey, walkAnimStop);
        }

        private void MoveSuperpower(CCPoint location)
        {
            superpower.StopAllActions();

            if (this.HasSuperpowers())
            {
                var moveFlower = new CCMoveTo(INSTANT_DURATION, location);
                superpower.RunActions(moveFlower, walkAnimStop);
            }
            else
            {
                EndSuperpower();
            }
        }

        private void MoveVillain(CCPoint location)
        {
            if (IsVillainAlive())
            {
                var moveVillain = new CCMoveTo(DELAYED_DURATION, location);
                villain.RunActions(moveVillain, walkAnimStop);

                villain.RotationY = (villain.Position.X - monkey.Position.X) > 0 ? REGULAR_ROTATION_Y : INVERTED_ROTATION_Y;
            }
        }

        private bool IsVillainAlive()
        {
            return villain.Visible;
        }

        private void EndSuperpower()
        {
            superpower.Visible = false;
        }

        private void StartScheduling()
        {
            // Check the game end
            Schedule (t => {
                visibleBananas.Add (AddBanana ());
                //elapsedTime += t;
                if (ShouldEndGame ()) {
                    EndGame ();
                }
                AddBall ();
            }, 1.0f);

            // Check if something collides
            Schedule (t => CheckCollision ());

            // Ball update
            Schedule (t => {
                world.Step (t, 8, 1);

                foreach (CCPhysicsSprite ball in ballsBatch.Children) {
                    // Leave to left or right
                    if (ball.Visible && ball.PhysicsBody.Position.x < 0f || ball.PhysicsBody.Position.x * PTM_RATIO > ContentSize.Width) {
                        world.DestroyBody (ball.PhysicsBody);
                        ball.Visible = false;
                        ball.RemoveFromParent ();
                    } else {
                        ball.UpdateBallTransform();
                    }
                }
            });

            // Villain appearance
            Schedule (t => {
                villain.Visible = !villain.Visible;

                if (!this.IsVillainAlive()) {
                    SendVillainToHome();
                }
            }, VILLAIN_DURATION);

            // Gain hearts
            Schedule (t => this.Hearts++, HEART_GAIN_DURATION);
        }

        private void AddBall ()
        {
            int idx = (CCRandom.Float_0_1 () > .5 ? 0 : 1);
            int idy = (CCRandom.Float_0_1 () > .5 ? 0 : 1);
            var sprite = new CCPhysicsSprite (ballTexture, new CCRect (32 * idx, 32 * idy, 32, 32), PTM_RATIO);
            //sprite.Color = CCColor3B.Red;

            ballsBatch.AddChild (sprite);

            CCPoint p = GetRandomPosition (sprite.ContentSize);
            sprite.Position = new CCPoint (p.X, p.Y);

            var def = new b2BodyDef ();
            def.position = new b2Vec2 (p.X / PTM_RATIO, p.Y / PTM_RATIO);
            def.linearVelocity = new b2Vec2(0.0f, -1.0f);
            def.type = b2BodyType.b2_dynamicBody;
            b2Body body = world.CreateBody (def);

            var circle = new b2CircleShape ();
            circle.Radius = 0.3f;

            var fd = new b2FixtureDef ();
            fd.shape = circle;
            fd.density = 1f;
            fd.restitution = 0.85f;
            fd.friction = 0f;
            body.CreateFixture (fd);

            sprite.PhysicsBody = body;
        }

        private void SendVillainToHome()
        {
            var moveVillain = new CCMoveTo(INSTANT_DURATION, new CCPoint(-150, -150));
            villain.RunActions(moveVillain, walkAnimStop);
        }

        private void AddGrass ()
        {
            grass = new CCSprite ("grass");
            AddChild (grass);
        }

        private void AddVillain ()
        {
            villain = new CCSprite ("rool");
            villain.Visible = false;
            AddChild (villain);
        }

        private void AddSun ()
        {
            circleNode = new CCDrawNode ();
            circleNode.DrawSolidCircle (CCPoint.Zero, 30.0f, CCColor4B.Yellow);
            AddChild (circleNode);

            sun = new CCParticleSun (CCPoint.Zero);
            sun.StartColor = new CCColor4F (CCColor3B.Red);
            sun.EndColor = new CCColor4F (CCColor3B.Orange);
            AddChild (sun);
        }

        private void AddMonkey ()
        {
            var spriteSheet = new CCSpriteSheet ("animations/monkey.plist");
            var animationFrames = spriteSheet.Frames.FindAll ((x) => x.TextureFilename.StartsWith ("frame"));

            walkAnim = new CCAnimation (animationFrames, 0.1f);
            walkRepeat = new CCRepeatForever (new CCAnimate (walkAnim));
            monkey = new CCSprite (animationFrames.First ()) { Name = "Monkey" };
            monkey.Scale = MONKEY_REGULAR_SCALE;

            AddChild (monkey);
        }

        private void AddSuperpower ()
        {
            superpower = new CCParticleFlower (monkey.Position);
            superpower.Visible = false;
            AddChild (superpower);
        }

        private CCSprite AddBanana ()
        {
            var spriteSheet = new CCSpriteSheet ("animations/monkey.plist");
            var banana = new CCSprite (spriteSheet.Frames.Find ((x) => x.TextureFilename.StartsWith ("Banana")));

            var p = GetRandomPosition (banana.ContentSize);
            banana.Position = p;
            banana.Scale = 0.5f;

            AddChild (banana);

            var moveBanana = new CCMoveTo (5.0f, new CCPoint (banana.Position.X, 0));
            banana.RunActions (moveBanana, moveBananaComplete);
            banana.RepeatForever (rotateBanana);

            return banana;
        }

        private CCPoint GetRandomPosition (CCSize spriteSize)
        {
            double rnd = CCRandom.NextDouble ();
            double randomX = (rnd > 0) 
                ? rnd * VisibleBoundsWorldspace.Size.Width - spriteSize.Width / 2 
                : spriteSize.Width / 2;

            return new CCPoint ((float)randomX, VisibleBoundsWorldspace.Size.Height - spriteSize.Height / 2);
        }

        private void CheckCollision ()
        {
            CheckBananaCollision();

            CheckBallCollision();

            CheckVillainCollision();
        }

        private void CheckBananaCollision()
        {
            visibleBananas.ForEach(banana => 
            {
                if (banana.BoundingBoxTransformedToParent.IntersectsRect(monkey.BoundingBoxTransformedToParent))
                {
                    hitBananas.Add(banana);
                    CCSimpleAudioEngine.SharedEngine.PlayEffect("Sounds/tap");
                    Explode(banana.Position, 10);
                    banana.RemoveFromParent();

                    if (this.HasSuperpowers())
                    {
                        monkey.Scale = MONKEY_GIANT_SCALE;
                    }

                    // Double the multiplier if it already has powers!
                    //this.PointsMultiplier = (this.HasSuperpowers() ? this.PointsMultiplier * 2 : 1);
                    this.Points += 100 * this.PointsMultiplier;

                    var moveFlower = new CCMoveTo(INSTANT_DURATION, monkey.Position);
                    superpower.RunActions(moveFlower, walkAnimStop);
                    superpower.Visible = true;

                    this.ShowHeader();
                }
            });

            hitBananas.ForEach(banana => visibleBananas.Remove(banana));
        }

        private void CheckBallCollision()
        {
            foreach (CCPhysicsSprite ball in ballsBatch.Children)
            {
                if (ball.BoundingBoxTransformedToParent.IntersectsRect(monkey.BoundingBoxTransformedToParent))
                {
                    monkey.Scale = MONKEY_REGULAR_SCALE;

                    this.Points -= 10;
                    Explode(ball.Position, 3);
                    ball.RemoveFromParent();

                    if (this.HasSuperpowers())
                    {
                        superpower.Visible = false;
                    }
                    else
                    {
                        this.Hearts--;
                    }

                    this.ShowHeader();
                }
            }
        }

        private void CheckVillainCollision()
        {
            if (villain.Visible && villain.BoundingBoxTransformedToParent.IntersectsRect(monkey.BoundingBoxTransformedToParent))
            {
                if (this.HasSuperpowers())
                {
                    monkey.Scale = MONKEY_REGULAR_SCALE;

                    Explode(villain.Position, 5);
                    villain.Visible = false;
                    superpower.Visible = false;
                }
                else
                {
                    EndGame();
                }
            }
        }

        private void ShowHeader()
        {
            RemoveChild (scoreLabel);
            this.scoreLabel = new CCLabelTtf (String.Format("Points: {0}", this.Points.ToString()), "arial", 22) {
                Position = new CCPoint (VisibleBoundsWorldspace.Size.Center.X, VisibleBoundsWorldspace.MaxY - 50),
                Color = new CCColor3B (CCColor4B.Black),
                HorizontalAlignment = CCTextAlignment.Left,
                VerticalAlignment = CCVerticalTextAlignment.Top,
                AnchorPoint = CCPoint.AnchorMiddle
            };
            AddChild (scoreLabel);

            RemoveChild (heartLabel);
            this.heartLabel = new CCLabelTtf (String.Format("Hearts: {0}", this.Hearts.ToString()), "arial", 22) {
                Position = new CCPoint (80, VisibleBoundsWorldspace.MaxY - 50),
                Color = new CCColor3B (CCColor4B.Black),
                HorizontalAlignment = CCTextAlignment.Left,
                VerticalAlignment = CCVerticalTextAlignment.Top,
                AnchorPoint = CCPoint.AnchorMiddle
            };
            AddChild (heartLabel);
        }

        private void EndGame ()
        {
            // Stop scheduled events as we transition to game over scene
            UnscheduleAll();

            var gameOverScene = GameOverLayer.SceneWithScore (Window, hitBananas.Count, Points);
            var transitionToGameOver = new CCTransitionMoveInR (1.0f, gameOverScene);

            Director.ReplaceScene (transitionToGameOver);
        }

        private void Explode (CCPoint pt, int particles)
        {
            var explosion = new CCParticleExplosion (pt);
            explosion.TotalParticles = particles;
            explosion.AutoRemoveOnFinish = true;
            AddChild (explosion);
        }

        private bool ShouldEndGame ()
        {
            return this.Hearts <= 0;
        }

        protected override void AddedToScene ()
        {
            base.AddedToScene ();

            Scene.SceneResolutionPolicy = CCSceneResolutionPolicy.NoBorder;

            grass.Position = VisibleBoundsWorldspace.Center;
            monkey.Position = VisibleBoundsWorldspace.Center;

            var b = VisibleBoundsWorldspace;
            sun.Position = b.UpperRight.Offset (-100, -100); //BUG: doesn't appear in visible area on Nexus 7 device

            circleNode.Position = sun.Position;

            //AddClouds ();
        }

        /*private void AddClouds ()
        {
            float h = VisibleBoundsWorldspace.Size.Height;

            parallaxClouds = new CCParallaxNode {
                Position = new CCPoint (0, h)
            };
             
            AddChild (parallaxClouds);

            var cloud1 = new CCSprite ("cloud");
            var cloud2 = new CCSprite ("cloud");
            var cloud3 = new CCSprite ("cloud");

            float yRatio1 = 1.0f;
            float yRatio2 = 0.15f;
            float yRatio3 = 0.5f;

            parallaxClouds.AddChild (cloud1, 0, new CCPoint (1.0f, yRatio1), new CCPoint (100, -100 + h - (h * yRatio1)));
            parallaxClouds.AddChild (cloud2, 0, new CCPoint (1.0f, yRatio2), new CCPoint (250, -200 + h - (h * yRatio2)));
            parallaxClouds.AddChild (cloud3, 0, new CCPoint (1.0f, yRatio3), new CCPoint (400, -150 + h - (h * yRatio3)));
        }

        private void MoveClouds (float dy)
        {
            parallaxClouds.StopAllActions ();
            var moveClouds = new CCMoveBy (1.0f, new CCPoint (0, dy * 0.1f));
            parallaxClouds.RunAction (moveClouds);
        }*/

        public static CCScene GameScene (CCWindow mainWindow)
        {
            var scene = new CCScene (mainWindow);
            var layer = new GameLayer ();

            scene.AddChild (layer);

            return scene;
        }

        public override void OnEnter ()
        {
            base.OnEnter ();

            InitPhysics ();
        }

        private void InitPhysics ()
        {
            CCSize s = Layer.VisibleBoundsWorldspace.Size;

            var gravity = new b2Vec2 (0.0f, -10.0f);
            world = new b2World (gravity);

            world.SetAllowSleeping (true);
            world.SetContinuousPhysics (true);

            var def = new b2BodyDef ();
            def.allowSleep = true;
            def.position = b2Vec2.Zero;
            def.type = b2BodyType.b2_staticBody;
            b2Body groundBody = world.CreateBody (def);
            groundBody.SetActive (true);

            b2EdgeShape groundBox = new b2EdgeShape ();
            groundBox.Set (b2Vec2.Zero, new b2Vec2 (s.Width / PTM_RATIO, 0));
            b2FixtureDef fd = new b2FixtureDef ();
            fd.shape = groundBox;
            groundBody.CreateFixture (fd);

            // Scale grass size if needed
            grass.ScaleY = s.Height / grass.ContentSize.Height;
            grass.ScaleX = s.Width / grass.ContentSize.Width;
        }
    }
}