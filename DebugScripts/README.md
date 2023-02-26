## Developer debug tools

The `index.lua` script is read by the KSP2 debug panel. It is read each time the debug window is shown (CTRL+F8), which makes developing it very easy, as you don't need to reload the game each time.

You may be interested in developing your own. Here's a dump of all globals available in the Lua environment at the launchpad scene.

```yaml
LuaPipeDebug:
  SetDataLinkEnabled: <function>
  GetDataLinkEnabled: <function>
Modding:
  LoadMods: <function>
  ShowModList: <function>
  ModEvent: <function>
  ShowModDialog: <function>
Tools:
  ExecuteScript: <function>
  CreateWindow: <function>
  DestroyWindow: <function>
  SetWindowTitle: <function>
  CloseAndRun: <function>
  Window:
    CreateButton: <function>
    CreateCheckbox: <function>
    CreateLabel: <function>
    CreateTextField: <function>
    CreateNumericField: <function>
    CreateDropList: <function>
    SetDropListUpdateScript: <function>
    CreateSeparator: <function>
    SetCheckboxState: <function>
    CreateHorizontalSlider: <function>
    SetSliderRange: <function>
    SetSliderCurrentValue: <function>
    SetSliderUpdateScript: <function>
    SetSliderLabel: <function>
ScriptBrowser:
  ShowScriptBrowserWindow: <function>
  HideScriptBrowserWindow: <function>
DebugVisualizer:
  ShowFrameTimes: <function>
  GetShowFrameTimes: <function>
  SetTextPosition: <function>
  ToggleLocalizationDebugMode: <function>
  QAPrintPartsInBuildersCSVs: <function>
  ToggleVesselTools: <function>
  ToggleKerbalTools: <function>
  ToggleSimObjectTools: <function>
  ToggleOABAssemblyOverlay: <function>
  ToggleOABSizeLimits: <function>
  ToggleFXTools: <function>
  TogglePlanetViewer: <function>
  ToggleTeleportWindow: <function>
  ToggleLogConsole: <function>
  ToggleThermalDebugTool: <function>
  ToggleVesselCoordinateLocation: <function>
  PassiveTierNotification: <function>
  AlertTierNotification: <function>
  AdminTierNotification: <function>
  EnableNotificationTimer: <function>
  ToggleShowDebugLoginButtons: <function>
  PlaceKerbal: <function>
  RestartLegalAcceptance: <function>
  ToggleNotificationsCanvasVisibility: <function>
  ShowTextureStreamingStats: <function>
  GetShowTextureStreamingStats: <function>
  SetTextureStreaming: <function>
  GetTextureStreaming: <function>
  SetTextureStreamingBudget: <function>
  GetTextureStreamingBudget: <function>
QuickActions:
  ShipInVAB: <function>
  ShipOnLaunchpad: <function>
  ShipInOrbit: <function>
  PlaneInVAB: <function>
  PlaneOnRunway: <function>
  VABSurface: <function>
  VABOrbit: <function>
  BAESurface: <function>
  BAEOrbit: <function>
Cheats:
  QuickDebugEnable: <function>
  QuickDebugRestore: <function>
  SetNoCrashDamage: <function>
  GetNoCrashDamage: <function>
  SetInfinitePropellant: <function>
  GetInfinitePropellant: <function>
  SetInfiniteElectricity: <function>
  GetInfiniteElectricity: <function>
  SetUnbreakableJoints: <function>
  GetUnbreakableJoints: <function>
  SetUnbreakableParts: <function>
  GetUnbreakableParts: <function>
  SetDisableGravity: <function>
  GetDisableGravity: <function>
  SetDisableAerodynamics: <function>
  GetDisableAerodynamics: <function>
  SetDisableThermodynamics: <function>
  GetDisableThermodynamics: <function>
  SetIgnoreMaxTemp: <function>
  GetIgnoreMaxTemp: <function>
  ResetAllValues: <function>
Colonies:
  ToggleColonyDialog: <function>
  TestGroundBAE: <function>
  TestGroundColonyVariant1: <function>
  TestGroundColonyVariant2: <function>
  TestGroundColonyVariant3: <function>
Missions:
  ActivateMission: <function>
  SetMissionState: <function>
AudioDebug:
  ToggleRealSpace: <function>
  TriggerDebugAudioEvent: <function>
FXDebugTools:
  ShowVFXTestSuite: <function>
  SetShowExplosionFX: <function>
  GetShowExplosionFX: <function>
  SetShowEngineFX: <function>
  GetShowEngineFX: <function>
  SetShowDetachFX: <function>
  GetShowDetachFX: <function>
  SetShowSurfaceImpactFX: <function>
  GetShowSurfaceImpactFX: <function>
  SetShowGroundBlastFX: <function>
  GetShowGroundBlastFX: <function>
  SetShowShockConeFX: <function>
  GetShowShockConeFX: <function>
  SetShowContrailsFX: <function>
  GetShowContrailsFX: <function>
  SetShowWingtipVorticesFX: <function>
  GetShowWingtipVorticesFX: <function>
  SetShowReentryFX: <function>
  GetShowReentryFX: <function>
  SetShowPersistantSurfaceContactFX: <function>
  GetShowPersistantSurfaceContactFX: <function>
  SetShowWheelSurfaceFX: <function>
  GetShowWheelSurfaceFX: <function>
  SetShowKerbalPoofFX: <function>
  GetShowKerbalPoofFX: <function>
  SetShowKerbalFootstepFX: <function>
  GetShowKerbalFootstepFX: <function>
  SetShowLaunchSmokeFX: <function>
  GetShowLaunchSmokeFX: <function>
  SetShowLaunchFireFX: <function>
  GetShowLaunchFireFX: <function>
  SetShowLaunchFuelTankIceFX: <function>
  GetShowLaunchFuelTankIceFX: <function>
PlanetDebug:
  SetPlanetScatterEnabled: <function>
  GetPlanetScatterEnabled: <function>
  SetPlanetRenderCollidersEnabled: <function>
  GetRenderPlanetCollidersEnabled: <function>
  SetPlanetLowQualityEnabled: <function>
  GetPlanetLowQualityEnabled: <function>
PostProcessingDebug:
  SetPostProcessingEnabled: <function>
  GetPostProcessingEnabled: <function>
  SetTutorialOverlayEnabled: <function>
  GetTutorialOverlayEnabled: <function>
LightingDebug:
  SetAtmosphericScatteringEnabled: <function>
  GetAtmosphericScatteringEnabled: <function>
  SetGlobalIlluminationEnabled: <function>
  GetGlobalIlluminationEnabled: <function>
  SetGlobalIlluminationObserverEnabled: <function>
  GetGlobalIlluminationObserverEnabled: <function>
  SetReflectionsEnabled: <function>
  GetReflectionsEnabled: <function>
  SetReflectionIntensity: <function>
  GetReflectionIntensity: <function>
  SetReflectionMipBiasMaxSteps: <function>
  GetReflectionMipBiasMaxSteps: <function>
  SetReflectionMipBiasGrowthRate: <function>
  GetReflectionMipBiasGrowthRate: <function>
  SetReflectionMipBiasOffset: <function>
  GetReflectionMipBiasOffset: <function>
SpaceSimulation:
  TeleportToRendezvous: <function>
  TeleportToOrbit: <function>
  TeleportToSurface: <function>
  SetLaunchSite: <function>
  Debug:
    Log: <function>
    WaitFor: <function>
    SetPhysicsMode: <function>
    Break: <function>
    GetUniversalTime: <function>
    SetTimeScale: <function>
    GetTimeScale: <function>
    GetTypes: <function>
  HOG:
    CreateForce: <function>
    CreateTorque: <function>
    SetLocalForce: <function>
    SetLocalTorque: <function>
    Destroy: <function>
    DestroyForce: <function>
    DestroyTorque: <function>
    ApplyImpulse: <function>
View:
  SetActiveVessel: <function>
  GetActiveVessel: <function>
  ReParentToActiveVessel: <function>
  MapIsEnabled: <function>
  SetLanguage: <function>
  StartCutscene: <function>
  ActiveVehicle:
    GetGuid: <function>
    GetActionGroups: <function>
    GetActionGroup: <function>
    SetActionGroup: <function>
    GetSpeedDisplayMode: <function>
    SetSpeedDisplayMode: <function>
    GetAltimeterDisplayMode: <function>
    SetAltimeterDisplayMode: <function>
    GetFlightControlsMode: <function>
    SetFlightControlsMode: <function>
  FlightCamera:
    GetMode: <function>
    SetMode: <function>
    GetAvailableModes: <function>
    SetDistance: <function>
    GetDistance: <function>
    SetHeading: <function>
    GetHeading: <function>
    SetPitch: <function>
    GetPitch: <function>
    SetFieldOfView: <function>
    GetFieldOfView: <function>
    RevertToDefaults: <function>
VolumeCloud:
  EnableClouds: <function>
  IsEnabledClouds: <function>
  SetRaymarchStepSize: <function>
  GetRaymarchStepSize: <function>
```

Here is a list of probably Lua built-in functions which the MoonSharp runtime provides:

```yaml
load: <function>
loadsafe: <function>
loadfile: <function>
loadfilesafe: <function>
dofile: <function>
__require_clr_impl: <function>
require: <GetDelegate>b__18_0
table:
  unpack: <function>
  pack: <function>
  sort: <function>
  insert: <function>
  remove: <function>
  concat: <function>
unpack: <function>
pack: <function>
pcall: <function>
xpcall: <function>
math:
  abs: <function>
  acos: <function>
  asin: <function>
  atan: <function>
  atan2: <function>
  ceil: <function>
  cos: <function>
  cosh: <function>
  deg: <function>
  exp: <function>
  floor: <function>
  fmod: <function>
  frexp: <function>
  ldexp: <function>
  log: <function>
  max: <function>
  min: <function>
  modf: <function>
  pow: <function>
  rad: <function>
  random: <function>
  randomseed: <function>
  sin: <function>
  sinh: <function>
  sqrt: <function>
  tan: <function>
  tanh: <function>
  pi: 3.14159265358979
  huge: 1.79769313486232E+308
coroutine:
  create: <function>
  wrap: <function>
  resume: <function>
  yield: <function>
  running: <function>
  status: <function>
bit32:
  extract: <function>
  replace: <function>
  arshift: <function>
  rshift: <function>
  lshift: <function>
  band: <function>
  btest: <function>
  bor: <function>
  bnot: <function>
  bxor: <function>
  lrotate: <function>
  rrotate: <function>
dynamic:
  eval: <function>
  prepare: <function>
os:
  clock: <function>
  difftime: <function>
  time: <function>
  date: <function>
json:
  parse: <function>
  serialize: <function>
  isnull: <function>
  null: <function>
```
