function DebugWindow(title, x, y, w, h)
  local self = {
    wnd
  }

  local wnd = Tools.CreateWindow(x, y, w, h)
  self.wnd = wnd

  Tools.SetWindowTitle(wnd, "")

  function self.Label(label)
    return Tools.Window.CreateLabel(wnd, " " .. label)
  end

  function self.Button(label, action)
    return Tools.Window.CreateButton(wnd, action, " [" .. label .. "]")
  end

  function self.Checkbox(label, variableName, script)
    return Tools.Window.CreateCheckbox(wnd, variableName, script, "  " .. label)
  end

  function self.Separator()
    return Tools.Window.CreateSeparator(wnd)
  end

  return self
end

function makeCall(classname, fn, ...)
  payload = classname .. "." .. fn
  payload = payload .. "("

  payload = payload .. table.concat({...}, ",")
  
  payload = payload .. ")"
  return payload
end

function ScriptingWindow()
 w = DebugWindow("Scripting")
end

function MainWindow()
  w = DebugWindow("Simple Debug Window", 200, 200, 300, 300)
  w.Label("Scripting")
  w.Button("Open Lua Debug Panel", "ScriptBrowser.ShowScriptBrowserWindow()")

  w.Separator()
  w.Label("Debug")
  w.Checkbox("Enable FPS", "_fpsEnabled", "DebugVisualizer.ShowFrameTimes(_fpsEnabled)")
  w.Checkbox("Enable Localization Debug", "_localizationDebugEnabled", "DebugVisualizer.ToggleLocalizationDebugMode(_localizationDebugEnabled)")
  w.Checkbox("Enable Texture Streaming Stats", "_textureStreamingStatsEnabled", "DebugVisualizer.ShowTextureStreamingStats(_textureStreamingStatsEnabled)")

  actions = {
    {label="Open FX debug tools", action="ToggleFXTools"},
    {label="Spawn a new Kerbal at camera position", action="PlaceKerbal"},
    {label="Toggle VAB size limit boxes", action="ToggleOABSizeLimits"},
    {label="Toggle notification visibility", action="ToggleNotificationsCanvasVisibility"}
    -- The prefabs that the classes of the following functions don't appear to
    -- be in the build?:
    -- "ToggleVesselTools",
    -- "ToggleKerbalTools",
    -- "ToggleSimObjectTools",
    -- "ToggleOABAssemblyOverlay",
    -- "TogglePlanetViewer",
    -- "ToggleTeleportWindow",
    -- "ToggleLogConsole",
    -- "ToggleThermalDebugTool",
    -- "ToggleVesselCoordinateLocation",
    -- "ToggleShowDebugLoginButtons",
  }
  for _, action in ipairs(actions) do
    w.Button(action["label"], "DebugVisualizer." .. action["action"] .. "()")
  end

  w.Separator()
  w.Label("Quick Actions")

  qactions = {
    {label="Generate a ship in VAB", action="ShipInVAB"},
    {label="Generate a ship on the launchpad", action="ShipOnLaunchpad"},
    {label="Generate a ship in Kerbin orbit", action="ShipInOrbit"},
    {label="Generate a plane in VAB", action="PlaneInVAB"},
    {label="Generate a plane on the runway", action="PlaneOnRunway"},
    {label="Go to VAB on Kerbin", action="VABSurface"},
    {label="Go to VAB in Kerbin orbit", action="VABOrbit"},
    {label="Go to BAE on Kerbin", action="BAESurface"},
    {label="Go to BAE in Kerbin orbit", action="BAEOrbit"}
  }
  for _, action in ipairs(qactions) do
    w.Button(action["label"], "QuickActions." .. action["action"] .. "()")
  end
end

MainWindow()
