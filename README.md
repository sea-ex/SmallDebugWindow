# Small Debug Window Mod for KSP 2

KSP2 ships with many debug widgets, and a fully functional Lua interface. There is even a keybind for toggling the debug menu (`CTRL+F8`), but unfortunately for us, it appears that the actual .lua scripts that create the window (`_Dev\Tools\DebugScripts\index.lua`) are not shipped with the game. Additionally, the game's lua execution functions are patched out.

This mod provides the following:

- A functional debug window that provides some of the functionality that the KSP2 built-in debug menu would've included, wired up to the in-game debug window keybind (`CTRL+F8`)
- Patches the game's .lua file execution so that you can actually execute your own .lua debug scripts

## Features

### Lua Debug Panel

This is a KSP2 built-in debug panel which can be used to execute .lua files with arguments. Quite useful for quickly running Lua mods or debug scripts.

### Various debug metrics

- Enable FPS
  - Accessible also via the settings currently
- Enable Localization Debug
  - Creating a mod and want to modify the texts shown in the UI, or to re-use the same messages? Enable this and the in-game texts show the names of the localized messages instead!
- Enable Texture Streaming Stats
  - Feeling like your bad GPU performance might have something to do with texture streaming? Enable this and see for yourself!

### Misc. debug utilities

- Spawn a new Kerbal at camera position
  - Have you always wanted to test the thermal properties of a Kerbal, but don't want to sacrifice your own Kerbals? Use this to spawn a new one on the camera's position.
- Toggle VAB size limit boxes
  - Building an absolutely gigantic ship and need to know exactly where the VAB's limits are? Check this.
- Toggle notification visibility
  - Annoyed by warnings about your ship bursting into flames? Use this.

### VFX test suite

This is a KSP2 built-in debug widget.

- Toggle Show VFX Locations
- Toggle Show Child Objects

Read details about VFX:

- Surface Interactions
- Ground Blast
- Launch Effects
- General
- Spatial Database
- VFX Global Settings

### FX debug tools

This is a KSP2 built-in debug widget.

Want to damage parts or joints, or destroy them completely to see how your ship will perform if you run into a rapid unscheduled disassembly event? Try it out.

This widget also shows a console that shows debug messages related to VFX. Useful for mod authors.

### Quick actions

The following spawn a preset ship/plane for testing:

- Generate a ship in VAB
- Generate a ship on the launchpad
- Generate a ship in Kerbin orbit
- Generate a plane in VAB
- Generate a plane on the runway

The following take your current ship to a VAB or BAE (it is uncertain what a BAE is, possibly an upcoming base builder?):

- Go to VAB on Kerbin
- Go to VAB in Kerbin orbit
- Go to BAE on Kerbin
- Go to BAE in Kerbin orbit

## Installation

1. Download and install the [BepInEx 5 for KSP 2 mod loader](https://spacedock.info/mod/3255/BepInEx%20for%20KSP%202) (tested with 5.4.21)
2. Download this mod's .zip file
3. Extract it into the KSP2 directory (e.g. `steamapps\common\Kerbal Space Program 2`)
4. Start KSP2 and press `CTRL+F8`

## Customizing

This mod drops a custom debug menu .lua script into `KSP2_x64_Data\_Dev\Tools\DebugScripts\index.lua`, which is where the built-in debug menu functionality looks for its main script.

It is easy to customize; just edit it with a text editor (or an IDE). It leverages KSP2's built-in Lua global interop functions.

A list of known Lua globals is included in the [README.md file](https://github.com/sea-ex/SmallDebugWindow/blob/master/DebugScripts/README.md) in the same directory. You may need to peek at the KSP2 assembly with DotPeek to see what the arguments are.

## Troubleshooting

If no menu appears, [enable the BepInEx console](https://docs.bepinex.dev/articles/user_guide/troubleshooting.html#enable-console) and see if there are any errors.
If there are problems, please raise an issue on this mod's [GitHub repository](https://github.com/sea-ex/SmallDebugWindow/issues).
