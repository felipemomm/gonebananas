using System;
using MonoTouch.Foundation;
using GoneBananasShared;

namespace GoneBananasiOS {
    public class SettingsImplementation : ISettings {
        public SettingsImplementation() {
        }

        #region implemented abstract members of Settings

        public override void SaveScore(int score) {
            if (score > this.GetScore())
            {
                NSUserDefaults.StandardUserDefaults.SetInt(score, TOP_SCORE);
                NSUserDefaults.StandardUserDefaults.Synchronize();
            }
        }

        public override int GetScore() {
            if (string.IsNullOrEmpty(NSUserDefaults.StandardUserDefaults.StringForKey(TOP_SCORE))) {
                return 0;
            }

            return NSUserDefaults.StandardUserDefaults.IntForKey(TOP_SCORE);
        }

        public override void SaveBananas(int bananas) {
            if (bananas > this.GetBananas())
            {
                NSUserDefaults.StandardUserDefaults.SetInt(bananas, TOP_BANANAS);
                NSUserDefaults.StandardUserDefaults.Synchronize();
            }
        }

        public override int GetBananas() {
            if (string.IsNullOrEmpty(NSUserDefaults.StandardUserDefaults.StringForKey(TOP_BANANAS))) {
                return 0;
            }

            return NSUserDefaults.StandardUserDefaults.IntForKey(TOP_BANANAS);
        }

        #endregion
    }
}