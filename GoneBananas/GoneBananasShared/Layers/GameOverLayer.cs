using System;
using CocosSharp;
using GoneBananasShared;

namespace GoneBananas
{
    public class GameOverLayer : CCLayerColor
    {
        string scoreMessage = string.Empty;
        CCEventListenerTouchAllAtOnce touchListener;
        CCLabelTtf playAgainLabel;

        public GameOverLayer (int bananas, int score) //: base(new CCSize (640, 1136))
        {
            touchListener = new CCEventListenerTouchAllAtOnce ();
            touchListener.OnTouchesEnded = (touches, ccevent) => {
                if (playAgainLabel.BoundingBoxTransformedToParent.IntersectsRect(new CCRect(touches[0].Location.X, touches[0].Location.Y, 1, 1))) {
                    Window.DefaultDirector.ReplaceScene (GameLayer.GameScene (Window));
                }
            };

            AddEventListener (touchListener, this);

            scoreMessage = String.Format ("Game Over.\nYou collected {0} bananas\nand scored {1} points!\n\nTop Score:\n{2} bananas and {3} points.", 
                bananas, score,
                SettingsHelper.Settings.GetBananas(), 
                SettingsHelper.Settings.GetScore());

            Color = new CCColor3B (CCColor4B.Black);

            Opacity = 255;
        }

        public void AddMonkey ()
        {
            var spriteSheet = new CCSpriteSheet ("animations/monkey.plist");
            var frame = spriteSheet.Frames.Find ((x) => x.TextureFilename.StartsWith ("frame"));
           
            var monkey = new CCSprite (frame) {
                Position = new CCPoint (VisibleBoundsWorldspace.Size.Center.X + 20, VisibleBoundsWorldspace.Size.Center.Y + 300),
                Scale = 0.5f
            };

            AddChild (monkey);
        }

        protected override void AddedToScene ()
        {
            base.AddedToScene ();

            Scene.SceneResolutionPolicy = CCSceneResolutionPolicy.ShowAll;

            playAgainLabel = new CCLabelTtf ("Tap HERE Play Again", "arial", 22) {
                Position = new CCPoint (VisibleBoundsWorldspace.Size.Center.X, 50),
                Color = new CCColor3B (CCColor4B.Green),
                HorizontalAlignment = CCTextAlignment.Center,
                VerticalAlignment = CCVerticalTextAlignment.Center,
                AnchorPoint = CCPoint.AnchorMiddle,
            };
            AddChild (playAgainLabel);

            var scoreLabel = new CCLabelTtf (scoreMessage, "arial", 22) {
                Position = new CCPoint (VisibleBoundsWorldspace.Size.Center.X, VisibleBoundsWorldspace.Size.Center.Y + 50),
                Color = new CCColor3B (CCColor4B.Yellow),
                HorizontalAlignment = CCTextAlignment.Center,
                VerticalAlignment = CCVerticalTextAlignment.Center,
                AnchorPoint = CCPoint.AnchorMiddle
            };
            AddChild (scoreLabel);

            AddMonkey ();
        }

        public static CCScene SceneWithScore (CCWindow mainWindow, int bananas, int score)
        {
            SettingsHelper.Settings.SaveBananas(bananas);
            SettingsHelper.Settings.SaveScore(score);

            var scene = new CCScene (mainWindow);
            var layer = new GameOverLayer (bananas, score);

            scene.AddChild (layer);

            return scene;
        }
    }
}