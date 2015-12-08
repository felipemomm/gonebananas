using System;

namespace GoneBananasShared
{
    public static class SettingsHelper
    {
        static ISettings settings;
        public static ISettings Settings {
            get { return settings; }
            set { settings = value; }
        }
    }
}