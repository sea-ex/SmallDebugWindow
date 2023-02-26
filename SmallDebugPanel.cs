using System;
using System.Reflection;
using BepInEx;
using BepInEx.Logging;
using HarmonyLib;

namespace SmallDebugPanel
{
    [BepInPlugin("engineering.sea-x.SmallDebugPanel", "Small Debug Panel", "0.1.0")]
    public class SmallDebugPanel : BaseUnityPlugin
    {
        public static ManualLogSource ModLogger = null;

        private void Awake()
        {
            ModLogger = this.Logger;
            Harmony.CreateAndPatchAll(Assembly.GetExecutingAssembly(), "engineering.sea-x.SmallDebugPanel");
        }
    }
}
