using System;

namespace GoneBananasShared {
    public abstract class ISettings {

        protected static string TOP_SCORE = "TOP_SCORE";
        protected static string TOP_BANANAS = "TOP_BANANAS";

        public abstract void SaveScore(int score);

        public abstract int GetScore();

        public abstract void SaveBananas(int bananas);

        public abstract int GetBananas();

    }

}
