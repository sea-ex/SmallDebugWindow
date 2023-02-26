using System;
using HarmonyLib;

namespace SmallDebugWindow
{
    /// <summary>
    /// Patches the ScriptUIMgr.ExectuteLua (sic) method to actually execute Lua code.
    /// </summary>
    [HarmonyPatch(typeof(KSP.ScriptUI.ScriptUIMgr), "ExectuteLua", MethodType.Normal)]
    public static class ExectuteLua_patch
    {
        [HarmonyPrefix]
        public static bool Prefix(string luaScript, KSP.ScriptInterop.IScriptEnvironment ___ScriptInjector, ref bool __result)
        {
            LuaPatchUtils.ExecuteLuaHook(luaScript, ___ScriptInjector, ref __result);
            return false;
        }
    }

    /// <summary>
    /// Patches the LuaDebugPanel.ExectuteLua (sic) method to actually execute Lua code.
    /// </summary>
    [HarmonyPatch(typeof(LuaDebugPanel), "ExectuteLua", MethodType.Normal)]
    public static class LuaDebugPanel__ExectuteLua_patch
    {
        [HarmonyPrefix]
        public static bool Prefix(string luaScript, KSP.ScriptInterop.IScriptEnvironment ___ScriptInjector, ref bool __result)
        {
            LuaPatchUtils.ExecuteLuaHook(luaScript, ___ScriptInjector, ref __result);
            return false;
        }
    }
}
