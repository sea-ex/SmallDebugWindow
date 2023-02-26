using System;

namespace SmallDebugPanel
{
    public static class LuaPatchUtils
    {
        public static void ExecuteLuaHook(string luaScript, KSP.ScriptInterop.IScriptEnvironment scriptInjector, ref bool result)
        {
            if (scriptInjector == null)
            {
                result = false;
                return;
            }

            try
            {
                scriptInjector.RunInterop.RunScript(luaScript);
                result = true;
            }
            catch
            {
                result = false;
            }

            return;
        }
    }
}
