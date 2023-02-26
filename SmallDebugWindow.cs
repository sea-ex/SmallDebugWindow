using System;
using System.Reflection;
using BepInEx;
using BepInEx.Logging;
using HarmonyLib;

namespace SmallDebugWindow
{
    [BepInPlugin("engineering.sea-x.SmallDebugWindow", "Small Debug Window", "0.1.1")]
    public class SmallDebugWindow : BaseUnityPlugin
    {
        public static ManualLogSource ModLogger = null;

        private void Awake()
        {
            ModLogger = this.Logger;
            Harmony.CreateAndPatchAll(Assembly.GetExecutingAssembly(), "engineering.sea-x.SmallDebugWindow");
        }
    }
}
