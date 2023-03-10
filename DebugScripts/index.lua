function DebugWindow(title, x, y, w, h)
  local self = {
    wnd
  }

  local wnd = Tools.CreateWindow(x, y, w, h)
  self.wnd = wnd

  Tools.SetWindowTitle(wnd, title)

  function self.Label(label)
    return Tools.Window.CreateLabel(wnd, " " .. label)
  end

  function self.Button(label, action)
    return Tools.Window.CreateButton(wnd, action, " [" .. label .. "]")
  end

  function self.Checkbox(label, variableName, script, initialState)
    local checkboxId = Tools.Window.CreateCheckbox(wnd, variableName, script, "  " .. label)
    Tools.Window.SetCheckboxState(wnd, checkboxId, initialState)
    return id
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

function MainWindow()
  w = DebugWindow("Small Debug Window", 200, 200, 300, 300)
  w.Label("Scripting")
  w.Button("Open Lua Debug Panel", "ScriptBrowser.ShowScriptBrowserWindow()")

  w.Separator()
  w.Label("Debug")
  w.Checkbox("Enable FPS", "_fpsEnabled", "DebugVisualizer.ShowFrameTimes(_fpsEnabled)", DebugVisualizer.GetShowFrameTimes())
  w.Button("Toggle Localization Debug", "DebugVisualizer.ToggleLocalizationDebugMode()")
  w.Button("Dump VAB parts list into a CSV file", "DebugVisualizer.QAPrintPartsInBuildersCSVs()")

  actions = {
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
  w.Label("Rendering and VFX")

  w.Checkbox(
      "Enable Texture Streaming Stats",
      "_textureStreamingStatsEnabled",
      "DebugVisualizer.ShowTextureStreamingStats(_textureStreamingStatsEnabled)",
      DebugVisualizer.GetShowTextureStreamingStats()
  )
  w.Checkbox(
      "Enable Texture Streaming",
      "_textureStreamingEnabled",
      "DebugVisualizer.SetTextureStreaming(_textureStreamingEnabled)",
      DebugVisualizer.GetTextureStreaming()
  )
  w.Checkbox(
      "Enable Post Processing",
      "_enablePostProcessing",
      "PostProcessingDebug.SetPostProcessingEnabled(_enablePostProcessing)",
      PostProcessingDebug.GetPostProcessingEnabled()
  )
  w.Checkbox(
      "Enable Clouds",
      "_enableClouds",
      "VolumeCloud.EnableClouds(_enableClouds)",
      VolumeCloud.IsEnabledClouds()
  )

  local currentFxValues = {
    FXDebugTools.GetShowExplosionFX(),
    FXDebugTools.GetShowEngineFX(),
    FXDebugTools.GetShowDetachFX(),
    FXDebugTools.GetShowSurfaceImpactFX(),
    FXDebugTools.GetShowGroundBlastFX(),
    FXDebugTools.GetShowShockConeFX(),
    FXDebugTools.GetShowContrailsFX(),
    FXDebugTools.GetShowWingtipVorticesFX(),
    FXDebugTools.GetShowReentryFX(),
    FXDebugTools.GetShowPersistantSurfaceContactFX(),
    FXDebugTools.GetShowWheelSurfaceFX(),
    FXDebugTools.GetShowKerbalPoofFX(),
    FXDebugTools.GetShowKerbalFootstepFX(),
    FXDebugTools.GetShowLaunchSmokeFX(),
    FXDebugTools.GetShowLaunchFireFX(),
    FXDebugTools.GetShowLaunchFuelTankIceFX()
  }
  local effectsDisabledInitialValue = false
  for _, val in ipairs(currentFxValues) do
    if not val then
        effectsDisabledInitialValue = true
        break
    end
  end
  w.Checkbox("Disable effects rendering", "_disableEffectsRendering", [[
FXDebugTools.SetShowExplosionFX(not _disableEffectsRendering)
FXDebugTools.SetShowEngineFX(not _disableEffectsRendering)
FXDebugTools.SetShowDetachFX(not _disableEffectsRendering)
FXDebugTools.SetShowSurfaceImpactFX(not _disableEffectsRendering)
FXDebugTools.SetShowGroundBlastFX(not _disableEffectsRendering)
FXDebugTools.SetShowShockConeFX(not _disableEffectsRendering)
FXDebugTools.SetShowContrailsFX(not _disableEffectsRendering)
FXDebugTools.SetShowWingtipVorticesFX(not _disableEffectsRendering)
FXDebugTools.SetShowReentryFX(not _disableEffectsRendering)
FXDebugTools.SetShowPersistantSurfaceContactFX(not _disableEffectsRendering)
FXDebugTools.SetShowWheelSurfaceFX(not _disableEffectsRendering)
FXDebugTools.SetShowKerbalPoofFX(not _disableEffectsRendering)
FXDebugTools.SetShowKerbalFootstepFX(not _disableEffectsRendering)
FXDebugTools.SetShowLaunchSmokeFX(not _disableEffectsRendering)
FXDebugTools.SetShowLaunchFireFX(not _disableEffectsRendering)
FXDebugTools.SetShowLaunchFuelTankIceFX(not _disableEffectsRendering)
]], effectsDisabledInitialValue)

  w.Button("Open VFX test suite", "FXDebugTools.ShowVFXTestSuite()")
  w.Button("Open FX debug tools", "DebugVisualizer.ToggleFXTools()")

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
