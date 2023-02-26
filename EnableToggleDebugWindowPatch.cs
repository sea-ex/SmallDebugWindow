using System;
using System.Reflection;
using HarmonyLib;
using UnityEngine;

namespace SmallDebugPanel
{
    /// <summary>
    /// Hooks the GameInstance.Awake() function to add the missing binding to
    /// the ToggleDebugWindow keybind (ctrl+f8, alt+f12).
    /// </summary>
    [HarmonyPatch(typeof(KSP.Game.GameInstance), "Awake", MethodType.Normal)]
    public static class GameInstance__Awake_patch
    {
        [HarmonyPostfix]
        public static void Postfix(KSP.Game.GameInstance __instance)
        {
            var game = __instance;

            SmallDebugPanel.ModLogger.LogMessage("GameInstance.Awake postfix running");
            KSP.Input.GameInput.GlobalActions globals = game.Input.Global;

            if (game.InputManager.TryGetInputDefinition(out KSP.Input.GlobalInputDefinition definition))
            {
                definition.UnbindAction(globals.ToggleDebugWindow.name, ToggleScriptUiMgr);
                definition.BindAction(globals.ToggleDebugWindow.name, ToggleScriptUiMgr);
            }
        }

        private static void ToggleScriptUiMgr()
        {
            SmallDebugPanel.ModLogger.LogDebug("ToggleScriptUiMgr");

            var mgr = GameObject.FindObjectOfType<KSP.ScriptUI.ScriptUIMgr>();
            if (mgr == null)
            {
                SmallDebugPanel.ModLogger.LogError("Unable to find GameObject for ScriptUIMgr");
                return;
            }

            typeof(KSP.ScriptUI.ScriptUIMgr)
                .GetMethod("OnToggleDebugWindow", BindingFlags.NonPublic | BindingFlags.Instance)
                .Invoke(mgr, null);
        }
    }
}
