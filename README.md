# GhostLand 7
A modpack for the 7th edition of GhostLand SMP


## Issues:
- [x] Continents incompatible with Tectonic *(fixed: Tectonic handles continentality on its own)*
- [ ] Update config files *(ongoing)*
- [ ] Clouds have some issues with rendering (DH makes clouds double-layerd) ~~*(note: Can't we pretend that this is intentional? They look kinda dope!)*~~ ~~*(fixed: turned the clouds off (there is one layer now instead of two))*~~ *(nope: look below)*
- [x] Clouds don't render at all without DH *(fixed: turned the clouds back on (there is one layer now instead of zero for DH-less players))*
- [ ] Issues while exiting a world ~~*(fixed: They just... fixed... themselves? Quits instantly without DH; with DH on - exiting takes some time (10-something seconds), but __usually__ will also happen, eventually.)*~~ *(update: they haven't actually fixed themselves, this issue still happens)*
- [x] Issues while entering a world (falling through the world) *(fixed: was a bug in older Baseline versions and since this pack was accidentally based on said older version - MidnightSP must've simply been unlucky enough to run into said bug)*
- [ ] Issues while entering a world (game incredibly laggy for the first few minutes) *(note: that IS the chunks loading in - recommended solution is to look at the horizon in a single direction until it loads, then look around very slowly, will need to make a note about this in Discord)*
- [x] If Aether detects Loading Screen Tips - regardless of whether integration with it is enabled in the config or not - it reloads resources right after game loads, leading to a doubled loading screen (which significantly increases the practical startup time - since, even though thanks to RRS we can navigate menus when resources are loading, noone's gonna join the world with a loading bar, especially one so obnoxious (in-game, it's fine when loading) as the one that ELS adds). *(fixed: Tipsn't)*
- [ ] GregTech's ores become transparent underwater (their polygons disappear - you can see the void)
- [ ] On some modded biome coastlines, Creeper-hole-like cutouts appear, and they tend to cut off trees and leave them floating *(note: this doesn't seem to happen, rather it is regular world height generation issues)*
- [ ] Enabling Planet Curvature in Distant Horizons does nothing
- [ ] With Panoramics seemingly completely cooked, we have nothing to make a main menu panorama for Fancy Menu with.
- [ ] Small Ships' boats made from wood from WilderWilds don't have textures
- [ ] Main menu panorama is... Uhhhhh...... Just check the Discord, please


## Changelogs:

### 7a17
- Marked a client-sided Fusion as double-sided (so ReChiseld won't complain)

### 7a16
- Updated: 3D Skin Layers, Balm, Distant Horizons, Entity Culling, RPG Skill Tree (but Modrinth will try to gaslight you into thinking that it's not updated), FancyMenu, FlightAssistant, Geckolib
- Configured sides for Rolling Down in the Deep, FlightAssistant and Do a Barrel Roll
- Re-disabled Cumulus button (it's unwantedly enabled by default, so it was disabled for some time (but undocumented), but then got re-enabled for some reason, and now it's back to it's proper (disabled) state)
- Configured Structure Credits
- Cleared all pins from REI
- Re-closed REI (regression from v12: was left opened and noone noticed until now)
- Fixed resourcepacks (that broke again, for *some* ungodly reason - srsly, why does this keep happening?)
- Changed s'more keybinds
- Bye, SVC-DC Bridge! (it's incompatible with our ARM-based server)
- Turned on clouds in options (to „fancy”)
- T'was a very painful choice..... But Dynamic Surroundings is now client-optional.
- Dynamic Crosshair, Traveler's Ttles and Fusion now correctly self-identify as CLO+SVX (x2) and SVX respectively (some update broke them, idk)
- Added `observable_announce` to overrides, so that it shuts the f up

### 7a15
- Added Do a Barrel Roll (to make elytra flying more fun)
- Added FlightAssistant (to help with flying)
- Added Rolling Down in the Deep (to make swimming more fun)
- Added Small Ships (idk why it wasn't here before)
- Added Exposure (adds the ability to take photos using an in-game camera)
- Added Autism (yippeee!!!!!)
- Removed SpoiledZ (so you don't have to worry about your food spoiling)
- Turned off clouds in options (to resolve layering issues)

### 7a14
- Properly updated pack's version (forgot in the last patch)
- Fixed one more regression (Sodium thinking that we hadn't seen the donation prompt, even though I'm 99% sure that ALL GhostLand players have seen it at some point in their lives - and our config reflected that before, but now it changed its mind, or something, idk)

### 7a13
- Added back Adaptive Tooltips (it got mistaken for Tips in the previous update)
- Re-enabled Advanced Tooltips (accidentally disabled in the previous update)
- Fixed texturepack errors caused by update 7a10 changing only MrIndex (it should also change vanilla configs)
- Nuked some more leaky configs

### 7a12
- Removed Reborn Progression (makes early-game too slow and encourages grinding)
- Removed Tips and removed them from Aether config
- Disabled Bed Overhaul (for now)

### 7a11
- Banished Distant Horizons config file

### 7a10
- Added side support to non-mod/datapack things

### 7a9
- Properly configured optional and excluded mods. Also, changed some datapack-mods into normal datapacks. This was all done under the geist of limiting the amount of mods present in Slim Edition (and - to a lesser extent - Full, too), and I think it went reasonably well, with ~150 mods optimised out of existance for Slim Edition (and the total mod count there is 211, which is both too much and actually pretty good). This kind of slimming-down is everything this patch WAS originally supposed to be about, but then - all hell broke loose because I realized that:
- This modpack was based on an earlier version of GhostLand Baseline (eg. OptiGui got removed in GLB, but stayed here; CME is supposed to be off by default; StackDeobf got deleted because they have a fully-functional [web version](https://stackdeobf.net/), so there's no need to clog the RAM with it; added WilderWild and HT's), so I updated it. (And by „updated”, I mean „manually added/disabled/removed everything that I remembered as „wasn't like that in Baseline” because there is no easy way to merge mrpacks, and Baseline was made before Grinch existed (in fact, Baseline is the reason why Grinch came to be - the DX was just so bad without proper Git support), so Git merging wasn't an option, either”.)
- We had 3 duplicates. One was the Create Mod (both Create Fabric and its fork: Create Fabric Sodium Fix, which isn't needed anymore on modern Sodium versions), the other was Farmer's Delight (MidnightSP added both its maintained version, but also one that was clearly marked as \[DEPRECATED] for... Some reason). Also, we had 2 different mods for right-click harvesting. Both were replaced by Serilum's one. Speaking of Serilum...
- „Hey! Some authors whose mods made it into Ghostland also made some other mods that we could use!” For context: I was checking mod pages (to see on which side it works, whether it could be a datapack, etc.) by clicking on the author's profile inside Modrinth, so that it opens in the browser (thus letting me check several mods at once, thanks to browser tabs). The side-effect of this was that I „accidentally” took a peek at some other cool mods they made and just couldn't let the opportunity go to waste. So if you're wondering how we ended up with 20+ mods by Serilum alone or with comically random stuff like Global Horn (it's made by `m`, the author of Sparse Structures) - that's how.

Overall: this patch was supposed to be small and take just a few days (3, maybe), but - by the virtue of requiring me to go through literally every mod in the pack - I unfortunately ended up being given a lot of opportunities for distractions in the form of messing with other mods. And - with my ADHD - you can imagine how well that went. ~~(It went „this shit took me TEN DAYS”-well.)~~ Also, speaking of distractions, I ended up accidentally stumbling upon [this video](https://youtu.be/fYpe4KZj9UE), which took me on an „implementing stuff from it”-spree. As such, we also now have:
- Simple Voice Chat, along with several plugins (incl. a Discord integration one, so people won't need to have SVC installed on their clients)
- ReplayMod (incl. an SVC integration one, so we can capture clips from the server entirely from the modapck - no extra software needed, unlike in the video)
- Reborn Progression, to hopefully slow down the sweating/grinding
- Iru's bed thingy, to (also) hopefully slow down the sweating/grinding
- Gravestones (we already had them, but I thought I'd mention them again, to adress the point about wearing iron armour from that video: it isn't as much about the armour itself, but rather about how it sucks to loose your items, which Gravestones will (hopefully) remedy, unlike those sh!tty Death Bundles from GL5)
- *TODO: Find/build a mod for `sudo`-like command (not [this](https://modrinth.com/mod/sudo/) - that's a joke-mod, sadly), to balance the need for admins (the video is wrong on that one, sadly - might be true for a vanilla server, but mods do be breaking sometimes, so an OP is needed on GhostLand) with the „No Cheating Whatsoever” rule (becasue that, really, does kill the joy from playing - see: point about trains in [things to mention](https://github.com/Team-GhostLand/GhostLand7#things-to-mention-to-people)), by eg. requiring you to provide a reason behind using OP, clearing your inventory upon leaving Sudo Mode, requiring someone else to acknowlege that you're granting yourself OP powers and logging it in the Discord for everyone to see.*

This obviously isn't all that changed in this giant patch, but I don't even remember everything anymore. All I can say is that, once I realised that this patch is getting too large, I sort-of stopped caring anymore and did a bunch of extra stuff (the end result of which is that the total count of projects inside our Modrinth Index increased by exaclty 54 - this, of course, encompasses everything (mods, datapacks) and also is the final „balance”, not „the raw amount of mods added”). Nevertheless, I remember *some* changes. These are:
- Simple Discord RPC instead of CraftPresence (SD-RPC works better for our usecase than CrP)
- Mods for extra dimensions: Aether, Twilight Forest, The Bumblezone, Dimensional Doors
- Installed stuff from VanillaTweaks
- Added Realistic Sleep (as an alternative to `/gamerule playerSleepPercentage` (which has a tendency to break immersion, with the time just randomly changing for non-sleepers all of the sudden - technically, this mod still breaks immersion *a bit*, but I think that this gradual, smooth speedup of stars and moon does so much less than an instant snap to the morning) or to spamming ZZZZZ in chat, in hopes that someone leaves+rejoins or falls asleep - which, however funny, is also frustrating when you're the one stuck waiting in bed)
- Confirmed: DashLoader won't work for whatever reason, Dimensional Threading isn't needed (and won't work) when we have Async
- Changed a metric fckton of configs (too long; see changes to README inside [this commit](https://github.com/Team-GhostLand/GhostLand7/commit/de42d39de0fd3c0bc1958aa7bfba67453905994f) +some values were reset to defaults (DH CPU mode to balanced; vanilla's brightness; Path block shadowyness, *I think???*), which isn't mentioned in the README, since it's not a deviation from default configs).
- Took extra care to delete unused configs and configs that leak stuff.
- Scanned the pack with [Canary](https://modrinth.com/mod/canary-safety) and it found the following suspicious mods: WilderWilds, SpoiledZ, Amendments, Copycats+ and Fish of Thieves. If something breaks in the future, we should check them first. It's very liekly that there are more, but unfortunatley, I was unable to finish the scan, as the next thing it got stuck on was something related to TerraformersMC and wood, which is of course completely delulu. We don't have any worldgen mods from them - hell, their only mod in GhostLand is Mod Menu and disabling that didn't make Canary shut up and move on to the next mod (\*it stops the scan as soon as it encounters a problem).
- Kept everything up-to-date (except Towers of the Wild, due to compatibility concerns with Waystones, and Simple Voice Chat, due to compatibility concerns with its ReplayMod integration) - but knowing my luck, 20 mods will suddenly decide to get an update, as soon as I hit „Commit” (edit: Of course, Entity Culling and 3D Skin Layers pushed a fucking update while I was writing the README for this patch. Fuck it, I don't care! Updating them is the next person's problem now. I ain't gonna delay this for another day just because of 2 stupid mods.)

### 7a8
- Fixed accidental deletions from the previous version (`options.txt` and `server-overrides`)
- Re-added some just-deleted mods (Puffer and CTM) to prepare for an upcoming super-merge (It'll add Origins and fix singleplayer problems, so reasons behind both deletions will become invalid)

### 7a7
- Removed Continents (Tectonic now adds the same functionality)
- Removed World Preview (it doesn't work and it isn't necessary)
- Removed Pufferfish's Skills x Origins (we don't have Origins in this modpack)
- Removed Create Track Map (it doesn't work on singleplayer and it isn't necessary)

### 7a6
- Fixed a minor config issue with the previous version

### 7a5
- Added Chipped x Create Fabric
- Added Create Track Map
- Added Immersive Weathering
- Removed 3D crops Revamped (don't fit with farmer's delight)

### 7a4
- Changed some minor vanilla configs (see: 5 earliest lines [here](https://github.com/Team-GhostLand/GhostLand7#vanilla)).
- Updated to v2 `grinch.kdl` format (and with it - configured modpack name, description and a new versioning scheme)

### 0.0.3
- Removed Fastload
- Removed HT's TreeChop

### Based on:
* [GhostLand 7 Baseline](https://github.com/Team-GhostLand/GhostLand7-Baseline/)
* Our internal testing modpacks
* Results of GhostLand's 1st [elections](https://github.com/Team-GhostLand/vote-calculator)


## Cumulative list of altered configs

### Known TODOs
There will, for certain, be more. These are just some things that came to my mind on the spot.
* FancyMenu (incl. Remove GFARB; Main menu panorama)
* Patchouli (if we end up including it), or some other guide/questbook thingy
* Use a datapack to properly configure cross-mod recipies (and loottables, if it turns out that chests feel too cluttered, which apparently (according to a recent discussion with Tymuś and - frankly - my own experience, too, now that I think about it) was a problem on GL6), so the pack doesn't feel like just a bunch of crudely mixed-together crap held together with hopes and prayers, but rather a cohesive creative experience. Ties together with the point above (about a guidebook).
* Bind-pizzeria (incl. a link to a LOOREEEEE repository - see: [pending election](https://github.com/Team-GhostLand/GhostLand7#pending-elections) about roleplay)
* Do something with Puffer's skill trees (we have too many of them rn, while none of them use Origins x Puffer)
* DiscordRCP
* Adaptive Tooltips
* Get HT's to cooperate with Veinminer
* Custom resourcepack (like for Cebuliony and stuff)
* Sparse Structures
* Increase title splash cycle rate (the way it is right now, you won't ever see it changing)
* Disable Simple VC groups (we have radios for that)
* MAYBE? add some default pins to REI, to subtly guide the player towards important objectives?
* Enable "visited=don't show again" for Structure Credits
* *also, this isn't really a config-related TODO, but we need to check whether Iru's bed-mod-thing works on server-side only*

### Vanilla
* polski (auto)
* fullscreen off
* narrator off
* completed setup
* gui scale 2
* audio: music 25%, amb 30%, surround on
* Advanced Tooltips on
* Admin Items on
* Texturepacks: Ambience (3D Crops, 3D Crops FD, grass, leaves), Green Semaphores, VT (skies, VT), CTx (Glass, defaults), food shit, QoL (low on fire, visual waxed), Text (Sodium Translations, Chat Reporting Helper), defaults (Moonlight, Sesonal Lush, Fabric, Polymer, Vanilla)
* Skipped multiplayer warning
* Auto-jump off
* Disabled pasue-on-lost-focus

### Sodium
* Quality: Lambda Grass mode
* Dynamic lights: no extinguishing
* Dynamic lights: enabled creepers
* More Culling: Mangroves, End Gates
* Sodium Extra>More: cloud reach and height max
* Sodium Extra>More: no tutorial, system and crafting toasts
* SSPB: 50%

### Controls: *(\*Not bind-pizzeria)*
* Disabled creative controls (X&C)
* Disabled narrator (AVE!)
* Disabled achievements - you can do so from the Esc menu
* Disabled reload celestial
* Disabled AE2 guide
* Disabled Big Cannons C-key
* Disabled secondary zoom
* Disabled Aether's invis toggle
* Disabled Accessories opening (in Acc's own menu, and then again in Aether's) - can do it from the inventory
* Disabled Things' Toggle Jump Boost and Open Ender Pouch - the latter can be done via a rightclick
* Disabled HT's config
* Disabled everything in VC except Mute and Push-to-talk (latter remapped to ``` ` ```, for easier access during gameplay, due to its proximity to `W`)
* Disabled Presence Footsteps config
* Disabled Jukebox
* Disabled OptiGUI's debug thing
* Disabled Substratium's reload
* Disabled Show Ghostblocks
* Disabled Skill Tree view
* Disabled everything Jade
* Disabled everything ReplayMod
* Disabled everything Iris
* Disabled everything Xaero
* Disabled everything Cave Dust
* Plane Rocket Boost at Enter
* Disabled vanilla screenshots - replaced with large ones
* Added secondary ability to Origins (at H)
* Tinker's set to Pages
* Remapped Small Ships sail from R to Y to prevent airplane-boat collisions
* Remapped various FlightAssistant keys to the right-hand cluster (where its arrows already were, anyway)
* Added thrus reversal to Do a Barrel Roll (at S)
* Disabled Do a Barrel Roll's toggle

### Bind Pizzeria
* Temporarily configured Worldmap shortcut (will be changed later to something more immersive, along with other BP configs)

### ReplayMod
* Disabled singleplayer recording (RplMd added mostly for social reasons (so that we can clip all funny moments, as recommended [in this video](https://youtu.be/fYpe4KZj9UE)), so there's no need to have it in singleplayer)

### REI
* REI hidden by default (press Ctrl+O to show), cuz it was eating frames for breakfast

### Exordium
* Disabled Chat Buffering, as it was breaking Chat Animations
* Disabled Health Buffering (incl. hunger, etc.), as it was breaking Apple Skin
* Forced Crosshair Updates, otherwise Dynamic Crosshair would break

### Entered structure display thingy
* Accidentally tripped some structures, must clear them from the Known-list, or other players won't see them

### BetterStats
* Accepted TOS

### Miniature Shader
* Whatever stuff was in Baseline

### Aether
* Disabled Cumulus button
* Disabled tips

### FlightAssistant
* Made the HUD green (*to MidnightSP: did you change this, or is that the defualt? Cuz it's white in their screenshots*)

### Structure Credits
* Cleared visited structures list
* Cleared any default overrides/blacklists that they had
* Disabled the "visited=don't show again" behaviour (**this must be reset in final release!**, or the players will get spammed with structure notifications)

### Observable
* Survived the announcement


## Things to mention to people
* See: [Issue](https://github.com/Team-GhostLand/GhostLand7#issues) about entering
* The differences between Full, Slim and Tweakable Editions
* There are 2 Kitsune Origins - wool color at their icons indicates the color of the particles you'll be emitting while walking.
* Inching Origin (and other size-changing ones) and Origins: Sizes don't conflict, as Origins: Sizes applies a multiplier, rather than an override. So if you pick Inchling then Normal, you'll be a standard Inchling that we all know and love; if you pick Small, you'll be an even smaller Inchling; you COULD probably make yourself invisible if you combine Inching+Tiny, or you can turn into a regular human by picking Incling and then Giant.
* If they don't have the Analog mod installed (Slim Edition) or have it disabled (default in Tweakable Edition, or could've done so manually in Full Edition), they must enable the resourcepack „Analog-serverside-edition.zip”.
* There are 4 options for skies available: Shaders, Dramatic Skies resourcepack via Celestial mod (you can disable it if you don't want to use DS), Less-dramatic Skies resourcepack via Vanilla Tweaks (default), just a normal Vanilla sky. It's recommneded to not combine them - just pick whichever one you think looks best.
* If you build a Create Mod train, you **MUST** save it as a schematic! This is so that, whenever trains break (hopefully they won't, but you never know), there would be a backup that lets you restore the train to the **EXACT** state that it was in before. This is important because when the trains broke on GL5, we took some *creative liberties* (pun intended), such as a freaking golden rim around the edges (or the fact that we used Copycats as the base building material, instead of trapdoors and stuff, like it was before), when rebuilding them. To be clear, the act of rebuilding on GM1 alone was entirely justified. The trains broke on their own; just magically disappeared. It would be unfair of the server admins to require Ghostland Railway Administration members to go through the struggle of obtaining train casings again because of the server's fault. But because we cheated (let's be honest and call it out for what it was) when rebuilding, *we* were the ones who treated the rest of the playerbase unfairly. Guzio's opinion here: ...And to me, that was the very moment when the server stopped being fun (just like they said in [this video](https://youtu.be/fYpe4KZj9UE): as soon as someone cheats at an SMP, it all suddenly feels meaningless). Well - one out of three. The other one was when the server went offline for 2 weeks because of a critical software failure (it really killed the excellent momentum (with usually >= 3 players at any given time during the day), right as we got an influx of new members, too!) and the other-other one was when Jifo was disqussing plans for GL6 at Palmer's (I thought „What's the point of playing now, if it's soon gonna be gone?”). Because, to be honest, GL5 really had a lot going for it! If it weren't for that 2-week outage and the cheating (discussion at Palmer's was a result of these two, since the playerbase started leaving), there is a chance, however small, that it would've still been alive today. *So, anyway...* Backup your trains people! Let's be sure that they're rebuilt EXACTLY like they were before, so that absolutely 0 materials get cheated in. How knows, maybe that's how we get a year (or more?) -long edition?
* Privacy notes: We accepted BetterStats privacy policy and we have Wiretap installed

### Pending elections
* **Origins:** Add Origins++? *ALSO* Replace Origins Default with Origins-? *ALSO* Have Origins at all?
* **Tech mods:** GregTech *or* Modern Industry + GT-style ores? *ALSO* TechReborn?
* **Smelting:** Alloy Forgery + Mythic Metals *or* Tinkers + HepExpansion *or* both, and then we add HepPlus for Mythic Metals x Tinkers integation? *[Will remove Crate: Molten Metals if we end up with Tinkers.]*
* **Dimensions:** Aether, Twilight Forest, The Bumblezone? (non-exclusive; probably won't even need a majority - even a moderate community interest (like 1/3) would be enough, and those who don't want a given mod, can just not use it) *ALSO* If we want DimDoors? (since it adds some pretty invasive structures (if you attempt to remove one, you'll be left with an ever-growing Rift) - this WILL require a majority vote)
* **Other:** Co-op achievements? *ALSO* Iru's harder bed thingy? *ALSO* Progression Reborn? *ALSO* Do we want this edition to be a bit more roleplay-ish?

### Things mentioned to future-Guzio:
Mod Patched (now deleted) mentioned an RFC about JSON merging - might be useful for Grinch in the future, perhaps?


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
7. Run `grinch import` or `grinch i` for short. *(Grinch will manually pick up any new files (files with names it hasn't „seen”) inside this folder. Please note that if there are several new files, Grinch will autoselect whichever one it sees first, which happens mostly **at random** (some OSes may sort alphabetically or by file changed/modified date, but that is **not** guaranteed). If you want to control this randomness (or if you want to import a file with a name that Grinch had already „seen” before), please override Grinch's autoselection using `grinch i <FILENAME>.mrpack`.)*
8. Push changes to the repo.


## Credits/Licensing:
* Licensed under MIT (ie. the „Do whatever the fuck you want”-clause), with the exception of some files (mentioned later).
* [Guzio](https://github.com/GuzioMG), [MidnightSP](https://github.com/Midnight-SP) and other people who didn't push any patches, but nevertheless helped us in some way on [our Discord](https://discord.gg/qCNUYBXY7P).
* [__*#GhostLand Project*__](https://github.com/Team-GhostLand/) – by [Jifo](https://github.com/JIFO0)
* This repository contains some files from 2 projects that are not licensed under MIT. We embedded them in compliance with their licenses, but this DOES NOT RE-LICENSE THEM under MIT in any way, shape, or form (we have no right to do so, after all). So if you were to fork/download/clone or otherwise obtain a copy of this project, you either also need to follow their licenses (such as no monetization), or **you must remove those files**. One of those files, Async Mod, comes from [this amazing repo](https://github.com/Bliss-tbh/Async-1.20.1/) (seriously amazing, I love those commit messages - btw, I too hate Gradle) and is licensed under [GPL](https://github.com/Bliss-tbh/Async-1.20.1/blob/ver/1.20.1/LICENSE) (ie. if you modify that file, you need to release all changed sources). The other non-MIT project (files: Less-Dramatic Skies resourcepack and everything including Vanilla Tweaks (or VT_) in its name) is [Vanilla Tweaks](https://vanillatweaks.net/). According to their [license](https://vanillatweaks.net/terms/), we need to have a `credits.txt` file with contents specified by them (which we do), which will be included on all main publishing platforms (we placed it inside `overrides`, so when you load this project's MRPACK inside Modrith (our target platform), the file will be included in the profile's root) and „our pack must include proper modification and/or additions” (which - if you count the modpack as a whole - probably counts, considering it has over 300 said modifications) and mustn't be monetised (which it isn't). Oh, we also have a resourcepack that got extracted from the [Analog](https://modrinth.com/mod/analog) mod, but that one's also licensed under [MIT](https://github.com/Gibatron/analog/blob/1.20/LICENSE), so we can safely include it in a different MIT project, as long as we include their exact wording of their license (which I just did, with that link).