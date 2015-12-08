using System;
using Android.Content;
using Android.Preferences;
using GoneBananasShared;

namespace GoneBananasAndroid {
    public class SettingsImplementation : ISettings {

        private Context _context;

        public SettingsImplementation(Context context) {
            _context = context;
        }

        #region ISettings implementation

        public override void SaveScore(int score) {
            if (score > this.GetScore())
            {
                ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(_context); 
                ISharedPreferencesEditor editor = prefs.Edit();

                editor.PutInt(TOP_SCORE, score);

                editor.Apply();
            }
        }

        public override int GetScore() {
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(_context); 

            if (!prefs.Contains(TOP_SCORE)) {
                return 0;
            }

            return prefs.GetInt(TOP_SCORE, 0);
        }

        public override void SaveBananas(int bananas) {
            if (bananas > this.GetBananas())
            {
                ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(_context); 
                ISharedPreferencesEditor editor = prefs.Edit();

                editor.PutInt(TOP_BANANAS, bananas);

                editor.Apply();
            }
        }

        public override int GetBananas() {
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(_context); 

            if (!prefs.Contains(TOP_BANANAS)) {
                return 0;
            }

            return prefs.GetInt(TOP_BANANAS, 0);
        }
        #endregion
    }
}


