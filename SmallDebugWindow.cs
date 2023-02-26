using BepInEx;
using BepInEx.Logging;
using HarmonyLib;
using System.Reflection;

namespace SmallDebugWindow
{
    [BepInPlugin("engineering.sea-x.SmallDebugWindow", "Small Debug Window", "0.1.3")]
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
