using System;
using CocosSharp;
using GoneBananasShared;

namespace GoneBananas
{
    public class GameStartLayer : CCLayerColor
    {
        public GameStartLayer () : base ()
        {
            var touchListener = new CCEventListenerTouchAllAtOnce ();
            touchListener.OnTouchesEnded = (touches, ccevent) => Window.DefaultDirector.ReplaceScene (GameLayer.GameScene (Window));

            AddEventListener (touchListener, this);

            Color = CCColor3B.Black;
            Opacity = 255;
        }

        protected override void AddedToScene ()
        {
            base.AddedToScene ();

            string msg = String.Format("Welcome to Super Donkey Kong!\n\nTop Score:\n{0} bananas and {1} points.", 
                SettingsHelper.Settings.GetBananas(), 
                SettingsHelper.Settings.GetScore());

            var label = new CCLabelTtf(msg, "arial", 22) {
                Position = VisibleBoundsWorldspace.Center,
                Color = CCColor3B.Green,
                HorizontalAlignment = CCTextAlignment.Center,
                VerticalAlignment = CCVerticalTextAlignment.Center,
                AnchorPoint = CCPoint.AnchorMiddle
            };

            AddChild (label);
        }

        public static CCScene GameStartLayerScene (CCWindow mainWindow)
        {
            var scene = new CCScene (mainWindow);
            var layer = new GameStartLayer ();

            scene.AddChild (layer);

            return scene;
        }
    }
}