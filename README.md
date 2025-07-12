# GhostLand 7
A modpack for the 7th edition of GhostLand SMP

## Issues:
- [x] Continents incompatible with Tectonic *(fixed: Tectonic handles continentality on its own)*
- [ ] Update config files *(ongoing)*
- [ ] Clouds have some issues with rendering
- [ ] Issues while exiting a world
- [ ] Issues while entering a world (falling through the world) *(note: isn't that just the chunks loading in?)*

## Cumulative list of altered configs

### Vanilla
* polski (auto)
* fullscreen off
* narrator off
* completed setup
* gui scale 2

## Guides:

### Tools needed:
- [Modrinth](https://modrinth.com/)
- [Grinch](https://github.com/Team-GhostLand/Grinch) and a terminal to run it in (REQUIRED for development, RECOMMENDED for playtesting)
- A Git-enabled code editor (such as [VSCode](https://code.visualstudio.com/)), Git or [GitHub CLI](https://cli.github.com/) (REQUIRED for development, can be ignored for testing)

### How to playtest:
1. Clone or [download](https://github.com/Team-GhostLand/GhostLand7/archive/refs/heads/master.zip) this repo;
2. If using Grinch, navigate to the repo's main folder (where this very `README.md` file is located) inside your terminal. If not using Grinch, do so in your file explorer.
2. Run `grinch export --quick` or `grinch e -q` for short (or manually zip the __content__ (ie. don't include the folder itself) of `modpack` into `GhostLand 7.mrpack`, if you don't have Grinch installed).
3. Import `GhostLand 7.mrpack` using Modrinth;
4. Now you can play!

### How to contribute:
1. Clone this repo;
2. Navigate to its main folder (where this very `README.md` file is located) inside your terminal;
3. Run `grinch export --dev` or `grinch e -d` for short;
4. Open `GhostLand 7.mrpack` using Modrinth;
5. Edit the modpack using Modrinth;
6. Export it from Modrinth to this folder as a new file (eg. `ghostland-updated.mrpack`);
7. Run `grinch import` or `grinch i` for short. *(Grinch will manually pick up on any new files (files with names it hasn't „seen”) inside this folder. Please note that if there are several new files, Grinch will autoselect whichever one it sees first, which happens mostly **at random** (some OSes may sort alphabetically or by file chasnged/modified date, but that is **not** guaranteed). If you want to control this randomness (or if you want to import a file with a name that Grinch had already „seen” before), please override Grinch's autoselection using `grinch i <FILENAME>.mrpack`.)*
8. Push changes to the repo.

## Changelogs:

### Based on:
* [GhostLand 7 Baseline](https://github.com/Team-GhostLand/GhostLand7-Baseline/)
* Our internal testing modpacks
* Results of GhostLand's 1st [elections](https://github.com/Team-GhostLand/vote-calculator)

### 0.0.3
- Removed Fastload
- Removed HT's TreeChop

### 7a4
- Changed some minor vanilla configs (see: 5 earliest lines [here](https://github.com/Team-GhostLand/GhostLand7#vanilla)).
- Updated to v2 `grinch.kdl` format

### 7a5
- Added Chipped x Create Fabric
- Added Create Track Map
- Added Immersive Weathering
- Removed 3D crops Revamped (don't fit with farmer's delight)

### 7a6
- Fixed a minor config issue with the previous version

### 7a7
- Removed Continents (Tectonic now adds the same functionality)
- Removed World Preview (it doesn't work and it isn't necessary)
- Removed Pufferfish's Skills x Origins (we don't have Origins in this modpack)
- Removed Create Track Map (it doesn't work on singleplayer and it isn't necessary)

### 7a8
- Fixed accidential deletions from the previous version (`options.txt` and `server-overrides`)
- Re-added some just-deleted mods (Puffer and CTM) to prepeare for an upcoming super-merge (It'll add Origins and fix singleplayer problems, so reasons behing both deletions will become invalid)