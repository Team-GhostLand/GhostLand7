# GhostLand 7
A modpack for the 7th edition of GhostLand SMP

## Table of Contents
- [Issues](#issues)
- [Changelogs](#changelogs)
- [Datapack](#the-datapack)
  - [Planned](#planned)
  - [Resourcepack](#resourcepack)
- [Altered Configs](#cumulative-list-of-altered-configs)
  - [TODOs](#known-todos)
    - [Forgettable TODOs](#dont-forget-about-those-todos)
  - [Vanilla](#vanilla)
  - [Keybinds](#controls-not-bind-pizzeria)
- [Things to mention](#things-to-mention-to-people)
  - [Elections](#pending-elections)
- [Guides](#guides)
  - [Tools needed](#tools-needed)
  - [How to playtest](#how-to-playtest)
  - [How to contribute](#how-to-contribute)
- [Credits/Licensing](#creditslicensing)

## Issues:
- [x] Continents incompatible with Tectonic *(fixed: Tectonic handles continentality on its own)*
- [ ] Update config files *(ongoing)*
- [ ] Clouds have some issues with rendering (DH makes clouds double-layerd) ~~*(note: Can't we pretend that this is intentional? They look kinda dope!)*~~ ~~*(fixed: turned the clouds off (there is one layer now instead of two))*~~ *(nope: look below)*
- [x] Clouds don't render at all without DH *(fixed: turned the clouds back on (there is one layer now instead of zero for DH-less players))*
- [ ] Client's embedded server seems to be getting stuck during startup (falling through the world (with commands, etc. not working), while the chunks are loading - and they never finnish loading) and shutdown (you get stuck on the „waiting to save World”-screen) *(note1: neither Guzio, nor `knpks` were able to replicate the issue (Guzio was able to achieve partial replication (falling through the world for a minute or 2, then fixed; I had some exit bugs once or twice, but they eventually stopped happening), while `knpks` couldn't at all, albeit their testing was much shorter) - currenly, this seems to affect only and exclusively MidnightSP)* *(note2: Could this be related to having higher-end hardware? Some heavily-threaded or -threading mod, like Distant Horizons or ASYNC spreads the load onto all 16 cores (compared to Guzio's and `knpks`'s pathetic 4), which creates more opportunities for some nasty lock-ups (thread 1 waits for thread 2, thread 2 waits for thread 1 - and they just get stuck like this until killed) to rear their ugly heads.)* *(note3: it seems like we can safely ignore it, as it only affects singleplayer (doesn't seem to happen on the dedicated server server-wise, and the embedded server doesn't start on multiplayer client-wise) and this pack is mostly multiplayer-focused, anyway - although I can imagine this does probably make development much more annoying for MidnightSP and I feel sorry for the inncocent lad)*
- [ ] Issues while entering a world (game incredibly laggy for the first few minutes) *(note: that's the chunks loading in - recommended solution is to look at the horizon in a single direction until it loads, then look around very slowly until all other directions load)*
- [x] If Aether detects Loading Screen Tips - regardless of whether integration with it is enabled in the config or not - it reloads resources right after game loads, leading to a doubled loading screen (which significantly increases the practical startup time - since, even though thanks to RRS we can navigate menus when resources are loading, noone's gonna join the world with a loading bar, especially one so obnoxious (in-game, it's fine when loading) as the one that ELS adds). *(fixed: Tipsn't)*
- [x] GregTech's ores become transparent underwater (their polygons disappear - you can see the void) **(fixed: GREGORY GOT GEYEETEN)** *(fixed: rest in pieces)* *(note: this has 2 different „fixed” notes bacause it got fixed twice, in both versions of 7a28)*
- [x] On some modded biome coastlines, Creeper-hole-like cutouts appear, and they tend to cut off trees and leave them floating ~~*(note: this doesn't seem to happen, rather it is regular world generation issue)* *(fixed: alr, whatever u say...)* *(note: this DOES happen, and doesn't only affect trees, but even villager houses - the responsible biome seems to be `biomesoplenty:floodplain` and its variations)*~~ *(fixed: floodplain is now disabled in Biomes O' Plenty)*
- [ ] Enabling Planet Curvature in Distant Horizons does nothing
- [x] With Panoramics seemingly completely cooked, we have nothing to make a main menu panorama for Fancy Menu with. *(fixed: found [this thing](https://modrinth.com/mod/panorama-screenshot) - not yet in the pack, since we're not doing any FancyMenu stuff yet)*
- [x] Small Ships' boats made from wood from WilderWilds don't have textures *(fixed: removed WilderWilds's biomes, so there's no way of obtaining these wood types now - players won't run into this issue in normal gameplay)*
- [x] WW's panorama texturepack keeps enabling itself against our will any time the packs change (and causes Missing Texture glitches whenever we disable it (ie. set it to the state it's *supposed to* be in) if its panorama was loaded before) *(fixed: moved it to the bottom of the list, practically disabling it)*
- [x] Can't join the server 💀 *(fixed: Somewhere along the mess that was 2a28, 2a29 and 2a30 - this bug has vanished. Now you can join. It even takes you all the way to the Origins screen!)*
- [x] Can't join the server at first becasue Twilight Forest complains about stuff; I have to get kicked and join again, after it's finished complaining *~~(note: this might be, in some way, related to an issue \~~that I've been ignoring for now (becasue it lowkey works like an accitential security feature 💀)~~~ that TwF sometimes just randomly screams `Exception occurred in netty pipeline`, whenever server-seeker (Which, btw, WON'T BLOODY LEAVE US ALONE - does this stupid script-kiddie not have any flags to set to not auto-retry on modded servers? Bro, let it go! Unless you actually manage to find this repo, there's no chance of you just brute-forcing a ~300 characters-long password, where each character has ~118000 states - becasue that's what our modlist effectively becomes in this context.) tries to join)*~~ *(fixed: that's... uhhh... No longer happening. I dunno why. Maybe it only happens some times?)*
- [x] The server spends too long loading players when they join, causing Watchdog to crash it *(fixed: bumped watchdog to 5min)*
- [ ] In EMI's tree view, all texture-derived icons (ie. NOT those black-and-white ones, like crafting;smelting;Tinker's, but those that are based on EMI's tab texture, like Sequenced Assembly or Inscriber) are offset in the Y axis so much that they clip all the way outside of the tree
- [ ] On the server, you start with a shield in your hand, which greatly lowers the initial wow-effect of Adaptive Crosshair *(note: this can be fixed, by actually configuring starting kits)* 
- [ ] You start with a Tinker's guidebook *(note: Tinker's seems to ignore starting kits)* 
- [ ] Modrinth's server list underscores the entire MOTD for some reason *(note: since doesn't happen in the actual game, I'm afraid this is entirely MR's fault and there might be no way to fix it from our level)*
- [x] RPM's recording incicator is constantly lingering in the corner on multiplayer (though it's normally covered by the minimap); not really providing anything of value (ppl will already know that we have RPM - we'll just tell them in the Discord) *(fixed: off)*
- [ ] Missing translations from Steve's Realistic Sleep in Slim Edition
- [x] WilderWild has disappeared *(fixed: added it back)*
- [ ] Opening AE2 Guidebook crashes the game *(note: crashdump imples that this is due to Starlight)*


## Changelogs:

### 7b7
- Updated: Amendments, HepEx, Moonlight, Tectonic
- Attempted to disable Necronomicon becasue it seemed like it could be causing server startup failures and it didn't seem like any mod depended on it, but apparently it's actually needed for Create Questing (they just... don't tell you about it via Fabric's dependency system, and instead crash your game when you load a world without it), so I mentioned its addition in changelogs for 7b3.
- Pointed server IP at `ghostland.ovh` instead of the old numerical one
- Didn't export `defaultconfigs/` becasuse I was inforemd that it's no longer necessary (as such, I also - once again - allowed myself to edit 7b3's changelog to remove a note about it)

### 7b6
- Updated: Amendments, CME Bad, PufferSkills, Substrate, Transodium
- Added: Discord integration, PacketAuth
- Added `emi.json` to server-excluded files
- Removed MoreChatHistory becase `Mixin transformation of net.minecraft.client.gui.components.ChatComponent` was failing (presumably becasue of an incompatibility with Discord integration's image renderer, that probably also Mixins into that class?)

### 7b5
- Re-disabled EMI
- Re-disabled fullscreen
- Re-added EMI pins/setups
- Re-added `observable_announce`
- Removed `borderlessmining.json` becasue that mod has been gone for ages

### 7b4
- Finished Create quest tree and added a quest tree for planes and ships

### 7b3
- Added FTB Quests, FTB Quests Optimiser, FTB Quests Freeze Fix, Create Questing, FTB Library, FTB Teams, Necronomicon
- Changed controls for:
  - Advancements [L] (as default)
  - Quests [J]
- Created a simple quest tree using FTB Quests (work in progress)

### 7b2
- Hidden RPM indicator
- Bumped BCC

### 7b1
- Updated: LD Vinery, Amendments, CICADA, Miniature Shader and Waystones (Farmer's Cutting BWG and BoP, TotW: Reworked and, RPG Skill Tree are already up-to-date - some datapacks simply tend to be a bit wonky with version displays; SimpleVC cannot be updated due to older dependencies)
- Added: TechReborn (and TR-EMI) and Modern Industrialisation (and MI Sound); KB!; bee,aeth
- Confugred starter kits (commands used: `/give @p bundle{display:{Name:'{"text":"Ulepszenia do Łóżek","color":"aqua","italic":true,"underlined":true}',Lore:['{"text":"...żebyś nie musiał(a) się męczyć z tym przy budowie pierwszego domu."}','{"text":"  "}','{"text":"* Użyj zegara na łóżku, aby umożliwić spanie w nim.","color":"white","italic":false}','{"text":"* Użyj kompasu na łóżku, aby umożliwić ustawianie na nim spawna.","color":"white","italic":false}','{"text":"UWAGA! Po użyciu na łóżku, kompasów/zegarów nie da się odzyskać!","color":"red","bold":true,"italic":false}','{"text":"   "}','{"text":"Ps  Darmowy bundle. Może się przydać. ;-)"}']},HideFlags:32,Items:[{id:"minecraft:clock",Count:3b,tag:{display:{Lore:['{"text":"Użyj na łóżku, aby umożliwić spanie w nim."}']}}},{id:"minecraft:compass",Count:1b,tag:{display:{Lore:['{"text":"Użyj na łóżku, aby umożliwić ustawianie na nim spawna."}']}}}]} 1`, `/give @p bundle{display:{Name:'{"text":"Podręczniki do Modów","color":"yellow","italic":true,"underlined":true}',Lore:['{"text":"Zawiera 6 książek z Tinker\'sa, 3 z Patchouli i 2 inne.","color":"white","italic":false}','{"text":"UWAGA! Książka z AE2 crashuje grę! Polecamy jej nawet nie craftować, bo i tak do niczego się nie przyda (dlatego też nie została tu dodana).","color":"red","bold":true,"italic":false}','{"text":"   "}','{"text":"Ps  Darmowy bundle. Może się przydać. ;-)"}']},Items:[{id:"tconstruct:materials_and_you",Count:1b},{id:"tconstruct:puny_smelting",Count:1b},{id:"tconstruct:mighty_smelting",Count:1b},{id:"tconstruct:tinkers_gadgetry",Count:1b},{id:"tconstruct:fantastic_foundry",Count:1b},{id:"tconstruct:encyclopedia",Count:1b},{id:"seasonsextras:seasonal_compendium",Count:1b},{id:"betterend:guidebook",Count:1b},{id:"powah:book",Count:1b},{id:"modern_industrialization:guidebook",Count:1b},{id:"aether:book_of_lore",Count:1b}],HideFlags:32} 1`, `/give @p spyglass{display:{Lore:['{"text":"UWAGA! Musi być w ekwipunku, żeby zoomowanie przez moda Zoomify działało!","color":"red","bold":true,"italic":false}','{"text":"UWAGA! Domyślnie, Mod Zoomify dostępny jest tylko w pełnym wydaniu paczki. W Tweakable Edition musisz go sobie włączyć, a do Slim Edition trzeba go side-loadować.","color":"red","bold":true,"italic":false}','{"text":"   "}','{"text":"Jeśli ta mechanika tak bardzo ci się nie podoba, to możesz zawsze ją wyłączyć (Esc > Mody > Zoomify > kilknij na ikonę moda > sekcja „Spyglass”, na dole > Zoom behavior: Combine)."}']}} 1` and `/give @p shield{Damage:320} 1`; some items renamed using vanilla anvils)
- Disabled starter books for MI and Tinker's
- Keybind changes: Disabled flight-related binds from Aether, MI, TR and Bumblezone (they were conflicting hard, so the only option would be to settle on a single one (meanwhile, if they're disabled, people can only enable those from whichever mod they use) and - due to those items being end-game, anyway - people can just enable those when the time come for them)
- „Seen” the Bundle Tutorial

### 7a35
- Re-added Wilder Wild as it literally physically couldn't've democratically loose the election few months ago if it wasn't even a part of that election. *(It's like saying that Tusk has lost the presidential elections. But he didn't; he never even ran in them. At the time of the presidential elections, Tusk was (and still it, but that's besides the point) a prime minister (a completely different role from a president/presidential candidate) - and (at the time of the worldgen elections) we thought that WW is an ambience mod (a completlely different thing from a worldgen mod). And although we since discovered that it does add some biomes, if we want to re-categorise WW as worldgen now, we'd need to repeat the whole elections about worldgen (Just like - if Tusk wanted to „re-categorise” himself as presidential candidate, he's need to actually run in the presidential elections.) becasue people might vote differently with it as an option (I know I'd've), but I don't think it's really worth the hassle. We have already wasted enough time on the ongoing elections, anyway. A saner option is to just accept that as a screw-up from the past.).* As a compromise, it has been configured to only act as an ambience mod (all worldgen functionality (except feature placement and changes structures - because (as can be seen by many other mods we've added that do this, despite not being in elections) that isn't considered as worldgen) has been disabled).
- Removed file `server.dat_old` becasue it does absolutely nothing if `server.dat` isn't corrupted.
- Re-added `emi.json` and `observable_announce` because they got unintentionally deleted.
- Restored `options.txt` and `vcinteraction.properties` becasue the former removed WW's panoramas (and now we have WW back) and disabled advanced tooltips (MidnightSP's confirmed that it was an accident), and the latter reset group interaction settings (which I presume wasn't even done by MidnightSP, but rather happened automatically, as a result of my comment (whatever `.properties` parser they used must've interpreted it as a string and (because that property is supposed to be a boolean) it got reset) - and even if it was on purpouse then we still should keep it on, at least until we properly test that setting's impact on radios)
- Switched Farmer's Cutting: BOP, Farmer's Cutting: BYG to datapack mode
- Added Farmer's Cutting: Aether, BetterEnd, BetterNether, Immersive Weathering; Fabric Seasons: Delight Compat

### 7a34
- Removed Wilder Wild as it democratically lost the election few months ago so it shouldn't be here anyway
- Added Farmer's Delight (and its addons: Sliced'n'Diced, Farmer's Cutting: BOP, Farmer's Cutting: BYG, Farmer's Knives, LDa Compat, Expansion)
- Configs:
  - Removed gtceu configs
  - Removed lush stacks and dead sea biomes from BiomesWeveGone as they are very ugly
  - Removed floodplain biome from BiomesOPlenty as it caused floating trees and other issues
- Hidden mod names in EMI
- Changed Starter Kit's status from CLX to CLO

### 7a33
- *Ah. I see why YUNG's API was client-required.* Better Archeology needs it. Enabled back!

### 7a32
- Swapped out Vibrative Voice for Voice Chat Interaction (because (of course, as I predicted becasue it was obvious) VV does need SimpleVC, despite claiming otherwise on Modrinth - and I decided to stop using a mod that messed up their page, because that seems like a red flag) and configured it
- Made SimpleVC always enabled, even in slim (because - now that I really think about it - there is no point in having it installed, if its presence isn't gonna be guaranteed for all player, becasue people would just switch to Discord as soon as they encounter anyone without the mod, and will likely stick to Discord afterwards)
- Experimentally set YUNG's API as client-optional (becasue all mods that depend on it are also CLO)
- Updated: AE2, Amendments (*note to MidnightSP: Should you want to install Farmer's Delight, but encounter any conflicts between it and Amendments - the previous Amendments version (that, I think, worked for you) is 1.2.19 and now we're on 2.0.3*)
- Did some more Spare Structures config

### 7a31
- Configured DH server
- Made Watchdog less aggresieve
- Yeeted Fresh Animations and its addon *(won't work on non-vanilla mobs)*

### 7a30
- Updated: Let's Do: Farm'n'Charm (base *(Becasue the older version was crashing the server. Guess what? IT'S THE SAME PROBLEM AGAIN! They used client-side code on the server. It's good that they were very fast with delivering a fix, but... seriously, people! Just add some side-detecting if statements 😅.)*, Candelight, Brewery, Bakery), Beachparty; Miniature Shader
- Nuked Nether Vinery (it wasn't even booting (`[17:21:12] [Render thread] [nethervinery/ERROR]: Failed to register NetherVinery registries! Disabling mod. at: knot//net.satisfy.nethervinery.fabric.NetherVineryFabric.onInitialize(NetherVineryFabric.java:27)`), anyway)
- Added POWAHH! and ME Requester
- ...And with this, the merge is *almost* finished! I only skipped updating Amendments (becasue I suspect that a too-new version *(for context: Guzio's version of 7a28 had a higher Amendments version number than MidnightSP, and the higher version has won)* could be the cause of the conflict with Farmer's Delight from 7a29), as well as the installation of Farmer's Delight (and its related projects - like „its addons”, Sliced'n'Diced, Farmer's Cutting: BOP, LDa Compat and ~~3D Crops~~) because (as stated before) MidnightSP is much better equipped to be handling this, since they have more experience with FD (having already added it once, then deleted, and then (succesfully, unlike my attempt) added it back).
- Added a `/mods` command. This mod could technically be client-optional (becasue it has client-side functionality, but isn't essential to join the server), but we marked it as server-only becasue having it on the client would be detrimental to its own functionality: The client's command would override the server's, thus preventing us from listing mods on the server anywhere but in the console - and being able to see the server mod list without SSHing the very reason we included it (we already have Mod Menu for clients, so it's not like we really need it there).
- Added resourcepacks: Fresh Animations (unlike all other packs, this one is marked as client-optional (not just server-excluded) because it might be a bit too heavy for the Slim Edition), FreshAnim Extension (same deal here), Enchanced Boss Bars and Fancy Crops (the crops can't be 3D even with FD installed (becasue we're keeping Let's Do, and it has no 3D crops addons), so we might as well at least make them fancier).
- Re-ordered resourcepacks again (because re-adding Moonlight mods changed the list a lot, plus I just added 4 more packs). As part of this, I finally capitulated against WW-panorama. Instead of trying to keep it disabled (it keeps coming back) - I allowed it to stay on the enabled list, but pushed it to the bottom, effectively doing the same thing that disabling it would have achieved.

### 7a29
- *Note: This patch will attempt to fix merge conflicts from the previous one and therefore IS a huge mess*
- All mod changes were merged (ie. whatever one person (or the both of us) added/removed/updated in 7a28 - got added/removed/updated here, in 7a29), *except*:
  - The removal of Let's Do (we now have it alongside Farmer's Delight)
  - The addition of MI and its sound and nuke addons (which tech mod we pick in place of Greg is up to the election)
  - *Maybe* Magna (idk what's this mod; it's in the configs, but it doesn't seem to be in the Modrinth Index - so it *might* have accidentially gotten deleted from 7a29, despite being in MidnightSP's version of 7a28)
- Re-added file `observable_announce` (always been there in Guzio's version, but MidnightSP's deleted it)
- Used configs from Guzio's version for:
  - Anything that uses timestamps (because Guzio's ver. got submitted later, and therefore those timestamps would get correctly incrememnted)
  - Geocluster and EMI because they were configured, instead of left as default
  - Jade's `sert-order.json` and `allowed_sounds.properties` (because the only thing changed is that they reference MI)
  - `options.txt` (MidnightSP got WWMenu'd - that, and this version also has some MI keybinds what we don't need at this time)
  - Anything that wasn't picked up by GitHub as a merge conflict (eg. `emi.json` (I already mentioned EMI *configs*, but this file is not a config), `server.properties`, GL's datapack, dependency overrides, .......)
- Used configs from MidnightSP's version for:
  - EMI Loot
  - C2ME
  - Cubes without Borders
  - Xaero  
  - Anything that was picked up by GitHub as a „added” (ie. Powahh, Magna ~~(whatever that is)~~, and ME Requester) and isn't related to MI (ie. MI itself and MI Sound Addon)
- Added compat mods: LDa Compat *(to better integrate FD and LD)*; Farmer's Cutting: BOP *(as a datapack)*

#### Notice:
Although everything pretaining to added files (configs, datapacks, other files) in the above changelog is correct - anything that would take place in the Modrinth Index (added/removed/updated packs/mods) **is currently not present**. In other words, all those mentions about „Added compat mods:” or „All mod changes were merged” are... basically lies. They didn't happen. Instead, the state of the index has been reverted to the way it was in Guzio's version of 7a28 patch, as it's the last-known working modlist and everything mentioned above rather represents the „intended state” of the pack. This is because of weird issues I encountered while trying to actually run the game in this „intended state”:
* The game refuses to launch with FancyMenu enabled, even though it was launching fine on 7a28 (both Guzio's and (as long as they tested it, which I'd guess they did) MidnightSP's version). So *somehow*, just by the pure concept of both 7a28 versions combining, FancyMenu managed to break. What the fuck???
* With FM disabled: The game will launch, but there'll be a Mixin conflict between Farmer's Delight and Amendments, which crashes the internal server - but again, I'm gonna guess that it was working fine on MidnightSP's version of 7a28, otherwise it wouldn't've been pushed. So why would it break now???

Because of these weird issues - and the fact that 5AM is fast approaching - I'm afraid there's no other solution than reveting the modlist to 7a28. And because Guzio's version is the one that's closer to the „intended state” (no MI; still has LD; has DNL), that's the one that's been chosen *(that, and I'm probably subconciously favouring my own creation)*. To bring it back to that „intended state”, the following mods must be added:
- Farmer's Delight (+ its addons) *[those added in 7a28-Midnight]*
- Powah!
- Sliced'n'Diced
- ME Requester
- 3d Crops Revamped *(Well.. That's not a mod, but whatever.)*
- LDa Compat
- Farmer's Cutting: BOP *(And neither is this; that's a datapack.)*

MidnightSP... I'm leaving this to you. I'm really sorry to be dumping this responsibility onto you, but you're more experienced with this (your patch involoved adding 5/7 of these mods - of 4/5, if we only count real mods) and also you'll be well-slept tommorow, while I'm currently falling asleep on the keyboard from 5AM-ness. You're just much better suited to be fixing this than me.

### 7a28
Because our project manager has ~~disappeared without a trace~~ *(ok, this isn't really fair - he DID reboot the VM for us just yesterday, but that's about everything anyone's heard from him for the past few weeks)*, so much so that (despite being mentioned in the creditsas the „branding” behind GhostLand) he isn't even a member of this GH org - and neither me, nor MidnightSP are great at coordinating our efforts - this patch ended up getting submitted twice. Whoops.

*Fun fact: because [our build server](http://130.162.246.47:25575/modules/ci/) only checks for increments in the version number - and MidnightSP has submitted his patch first - the server has never and will never build Guzio's version. So - at least from the perspective of our players - that version is technically lost media. Pretty cool! (Of course, one might try to build it from source - but I doubt any of our players will bother going through this hassle, for no real reason.)*

#### Guzio's version
- Updated: Tectonic, Farm'n'Charm, Zoomify
- Added `DUNGEON   NOW   LOADING..................`
- Removed VisualWorkbench becasue it was bloaty (client-required for some reason) and Tinker's does the same thing anyway (only on its crafting stations - but who's ever gonna use normal crafting tables with crafting stations available?)
- Removed GregTech, after our Head of Gregification said that this version is no good. _**[F]**_
- Re-added MoonlightLib and some of its dependencies (Supplementaries, Amendments, Fast Paintings, Immersive Weathering)
- Re-added Geocluster, now that GregTech won't be giving us its GT-style ores anymore *(also, its name fits the state of this pack right now: it's one giant geoclusterfuck)*
- Replaced REI (and it's singular addon - Collapible Entries) with EMI (addons: Let's Do compat, AE2 compat, extra compat, Enchanting, Loot (must be on both sides), Ores (must be on both sides), Proffessions, Trades, Create compat, Effects) *(EMI and 2 addons are marked as required on both sides; all other addons are marked as optional on the client (ie. will be excluded from Slim) and unsupported on the server)*
- Changes to `server.properties`
- Configured Geocluster (datapack (partially: only disabled not-generating vanilla ores for now, will also need to tweak it so that modded ores spawn instead of Geocluster's wherever possible) and in-game configs)
- Applied dependency overrides for Zoomify

#### MidnightSP's version
- Removed mods:
  - GregTech (RIP)
  - [Let's do] (all of it)
  - REI (added EMI instead)
- Added mods:
  - Geocluster
  - MoonlightLib
  - Farmer's Delight (+ its addons)
  - Supplementaries
  - Amendments
  - Fast Paintings
  - Immersive Weathering
  - Sliced'n'Diced
  - Powah!
  - ME Requester
  - Modern Industrialisation
  - EMI (instead of REI)
- Added resourcepacks:
  - 3d Crops Revamped

### 7a27
**`[EMERGENCY SECURITY PATCH]`**

### 7a26
- removed Substrate keybinds (Keaybinds got reset because it got renamed from Substratium, I think? Becasue our change-list only mentioned disabling Substratium (not Substrate), even though I'm pretty sure I didn't miss any conflicting mods *and also* mod Substratium doesn't seem to exist.)
- fixed SimpleVC keybind mix-up (``` ` ``` is for push-to-talk (because of its proximity to) and `M` is mute (for *M*ute) - it was the other way around for some reason)
- configured Create Dynamic Lights
- got treatened to disable Zoom-with-Spyglass
- configured FlightAssistant
- Added mod: Patchouli
- Updated mods: BALM, Fzzy Config
- Removed mods:
  - Numismatic Bounties (In my testing, it was ALMOST perfectly balanced; I was about to give this economical model a greenlight - **...And then it dropped a get-11-crowns-for-just-32-glass balancing bomb-shell on me**. No, thanks. I'd rather not have the entire economy cooked for the rest of the edition because some one person got lucky on the Bounty Board.)
  - Rolling Down in the Deep (it was clunky as hell)
  - Alloy Forgery (lost the battle with Tinker's)
  - Exposure (It's a cool concept and I'm very sad to see it go, but - realistically - noone would've ever used this, especially with Immersive Paintings availabe as an alternative to that ender-filter-thingy)
  - Fusion (not needed without ReChiseled)
  - HephaestusPlus (not needed without Mythic Metals or any other mod it's supposed to support)
  - \*Mythic Metals (Although the metals are very cool, they aren't justifies-pulling-down-3-extra-libs cool - which (with Things (the only\* other reason to keep OwoLib) being gone, and no official support for Tinker's, thus needing us to pull down Alloy Forgery (it's a hard-coded dependency and Deps Overrides can't save us here; \**this one is also an OwoLib dependency - but (iself being nothing more than being a dependency of MM, having lost the battle with Tinker's) I'm not counting it*) and HephaestusPlus for integration with Tinker's) is what this mod effectively forces us to do)
  - OwoLib (not needed without Mythic Metals (and thus Alloy Forgery) and Things)
  - ReChiseled (lost the battle with Chipped)
  - Create: ReChiseled (won't work without ReChiselde)
  - `supermartijn642corelib` (not needed without ReChiseled)
  - Things (too OP)
  - Trinkets (we have Trinkets<->Accessories Compat - regular 'ol Trinkets must've snuck in as some dependency and we didn't notice until now)
  - JustHammers (Tinker's has them)
  - Sliced'n'Diced (doesn't do enough to justify its existance after Farmer's Delight's removal)
- Iris (+compat with GeckoLib and Flywheel, +shaders) are no longer client-optional, after Slim Mode QA determined that they can be enabled
- Vibrative Voice, despite being marked as server-side-only, was causing index sync issues when joining without it onto a server with it, so we had to mark it as client-required. We did so, however, without marking SimpleVC as client-required because *apparently, somehow*, it doesn't depend on it. We'll see whether they lied about this on their Modrinth page, too... (I'd guess YES (considering their track record and how IT'S LITERALLY A PLUGIN for SVC), but who knows?)
- Create Dynamic Lights are now Client-optional (instead of unsupported); idk what was I smoking when I set it as unsupported before

### 7a25
- Removed WindDog's Bridge Mod (for it was causing a gregtech incompatibility on the server) ((lmao))
- Added Create: Dynamic Lights
- Fixed MOTD spacing in `server.properties`
- Sligtly cranked up structure rates

### 7a24
- Set BedOverhaul as enabled, under the assumption that it's server-side only (ie. it can be client-optional - except we don't know that for sure, so we'll see whether it breaks now)
- Updated: Crab's Backport, DimSyncFix, Fusion, IPN, Ksyxis, Miniature Shader, ModernFix, Kitsune, Substrate, Tectonic, T4S
- Fixed RPG Skill Tree mess (it still claims to be a mod (not just in Contents listing, but even inside version details), and it still wants to be updated (despiete already being updated), but I'm pretty sure this time it really, trully, 100%, the latest datapack)
- Marked all datapacks (that could be marked, ie. not VT) as optional on the client
- Zoomify is now configured and client-optional (and also server-excluded) - but it wasn't updated because [the latest version wants a library that doesn't exist](https://github.com/isXander/Zoomify/issues/238) xD
- Reordered resourcepacks, due to them changing in 7a23 (also, Visual Waxed has disappeared for reasons unknown - `TODO: re-enable it via VanillaTweaks`)
- Removed Geocluster's config
- Added GhostLand to the server list
- Added `localhost` as the default Direct Connect in the server list
- Enabled multiplayer recording for ReplayMod
- Added MOTD in `server.properties`
- Configured BetterCompatChecker
- Configured Zoomify
- Moved NCR's indicator on the server list, due to conflicts with BCC (technically, this would now conflict with any added servers, but why tf would you ever add a second server on a single-server-tied pack?)
- Nuked „Cycle Title Screen Splash” (Apparently, the rate wasn't 100s (which is what caused me to leave that now-deleted config TODO about it being too slow), but 100*t*, so 5s. Even setting it to 1t didn't make it go any faster (i sat there for 2 minutes wating for it to change and it didn't - even though it should be changing several times a second), so it's safe to assume that this mod is broken (maybe becasue of Exordium, idk) and can be deleted.)
- Made Areas client-optional
- Made Collective client-optional
- re-added `observable_announce` - it got accidentially deleted

### 7a23
- *Note: This patch will revert some of the previous changes and might be a bit of a mess*
- Added GregTech back
- Added WindDog's Bridge Mod (for better gregtech compatibility)
- Removed Geocluster (it was a temporary solution, anyway)
- Removed MoonlightLib and all of its dependencies (Farmer's Delight (+ its addons), Supplementaries, Amendments, Fast Paintings, Immersive Weathering, Create: Molten Metals)
- To replace Farmer's Delight added: [Let's do] (API, Vinery, HerbalBrews, Meadow, Beachparty, NetherVinery, Farm & Charm, Candlelight, Bakery, Brewery, Compat, Corn Expansion)
- Removed 3D Crops Revamped (no compatibility with [Let's do] mods)

### 7a22
- fully removed GregTech (temproary - awaiting MidnightSP's call, but I wanted to remove all flat-out disabled mods, ahead of sending the pack to Tymon for "Bloat Evaluation")
- added and configured Geocluster, as a way to get GregTech-style ores (temproary - awaiting MidnightSP's call)
- Updated: Fusion, MoonlightLib, BetterLeaves, BYG, Particle Rain, Puffer, Recibles, RPG skills, Sound Physics, Aether, Trans4Sodium, VisWkbnch, Waystones
- Some changes for server-side: Added `servers.dat` to `removals.txt`; added `server.properties`

### 7a21
- bumped version (because I forgot to do so for 7a20)

### 7a20
- Swapped CreateTrackMap for my own, custom version that actually works with modern MC (Maybe?).

### 7a19
- Disabled GregTech (the server was failing to start with it on)

### 7a18
- Marked Fusion as double-sided (fr this time)

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
- Dynamic Crosshair, Traveler's Titles and Fusion now correctly self-identify as CLO+SVX (x2) and SVX respectively (some update broke them, idk)
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
- *TODO: Find/build a mod for `sudo`-like command (not [this](https://modrinth.com/mod/sudo/) - that's a joke-mod, sadly), to balance the need for admins (the video is wrong on that one, sadly - might be true for a vanilla server, but mods do be breaking sometimes, so an OP is needed on GhostLand) with the „No Cheating Whatsoever” rule (becasue that, really, does kill the joy from playing - see: point about trains in [things to mention](#things-to-mention-to-people)), by eg. requiring you to provide a reason behind using OP, clearing your inventory upon leaving Sudo Mode, requiring someone else to acknowlege that you're granting yourself OP powers and logging it in the Discord for everyone to see.*

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
- Changed some minor vanilla configs (see: 5 earliest lines [here](#vanilla)).
- Updated to v2 `grinch.kdl` format (and with it - configured modpack name, description and a new versioning scheme)

### 0.0.3
- Removed Fastload
- Removed HT's TreeChop

### Based on:
* [GhostLand 7 Baseline](https://github.com/Team-GhostLand/GhostLand7-Baseline/)
* Our internal testing modpacks
* Results of GhostLand's 1st [elections](https://github.com/Team-GhostLand/vote-calculator)


## The Datapack
We have a datapack embedded within this modpack. Currently, it does this:
* Allows Geocluster to generate vanilla ores.

### Planned:
In general, to build a more cohesive experience. More specifically - do so by:
* Adding a Patchouli guidebook 
* Properly configureing cross-mod recipies, so the pack doesn't feel like just a bunch of crudely mixed-together crap held together with hopes and prayers, but rather a cohesive creative experience. Ties together with the point above.
* Integrating Pufferfish skill trees with both Origins (none of the trees we have installed currently use Puffer x Origins) and our vision for the pack, in general (rn, we have several trees installed, that all basically do the same thing - while also none of them work with Ghostland particularly well - they should all be replaced by a single, cohesive tree).
* *Maybe* integrating together Bounties and DnT? (if anyone will be brave enough to attempt this)
* Swaping Geocluster ores for proper modded ores.

### Resourcepack
Also, it would be nice to build a resourcpack to complement the datapack - for a menu panorama (I'm pretty sure FM only uses static images, but a ,moving panorama (using vanilla mechanics) would be great), but mostly for translations. Ideas right now:
* Fix a translation bug in Seteve's Realistic Sleep
* Rename Numismatic's currency to „Cebulions”

## Cumulative list of altered configs

### Known TODOs
There will, for certain, be more. These are just some things that came to my mind on the spot.
* FancyMenu (incl. Remove GFARB)
* Bind-pizzeria (incl. a link to a LOOREEEEE repository, should we vote on a more roleplay-ish edition)
* DiscordRCP
* Sparse Structures for modded structures
* Disable Simple VC groups (we have radios for that)
* Add the modpack icon into our files (won't be auto-applied, but this way, people will at least have the option to enable it themselves), preferably in such a way that it also works as a server icon, without needing to set one explicitly
* Clear configs for mods that are no longer with us (eg. ~~Geocluster~~ ~~*that's gone now, but there are a lot more removed mods from that 7a23 update, that left their configs behing*~~ *Geocluster is back, and so are some mods from 7a23 - but now 7a26 has a lot of deleted stuff*)
* Finish Geocluster's and EMI's config
* Do something about auth/whitelist (ideally via some sort of Discord integration becasue a `/login` command (like via the AuthMe Paper plugin, etc.) is a pathetic non-solution - it will annoy the hell out of everybody who actually paid for the game, which is **literally everone** in our playerbase, except one guy) or server-seeker will *eventually* find this repo and, get our datapack, and probably ~~server-~~seek revenge for calling them a script-kiddie.


#### Don't forget about those TODOs!
Things that - for one reason or another - are exceptionally easy to forget:
* Update BCC every time the *major* version number changes (ie. 7-ALPHA, 7-BETA, 7.0, 7.1, ... - but *not* 7a24, 7b6, 7.0.0, 7.0.1)
* Enable "visited=don't show again" for Structure Credits
* Populate `initial-enabled-packs` and `level-seed`, and configure `level-type` (otherwise a lot of structures won't generate and we'll not have that cool seed that MidnightSP found, and BetterEnd/BetterNether will not work) in `server.properties`

### Vanilla
* polski (auto)
* fullscreen off
* narrator off
* completed setup
* gui scale 2
* audio: music 25%, amb 30%, surround on
* Advanced Tooltips on
* Admin Items on
* Texturepacks: Ambience (grass, leaves, bushes, crops), Green Semaphores, boss-bars, VT (skies, base), CTx (Glass, base), FreshAnim (Addon, base), QoL (low on fire, Visual Waxed), Text (Sodium Translations, Chat Reporting Helper), defaults (Sesonal Lush, Moonlight, Fabric, Polymer, Vanilla, WW-Panorama)
* Skipped multiplayer warning
* Auto-jump off
* Disabled pasue-on-lost-focus
* Added default multiplayer servers
* Server-side: Added an MOTD, cleared-out RCON configs, increased the player cap, allowed flight (I don't think anyone's going to cheat - meanwhile, lags might cause false kicked-for-flying errors), enabled Command Blocks, set the default difficulty to hard (in line with older GLs), enabled query, forced gamemode, disabled chat reporting (not that this would change anything with NCR installed), turned the Watchdog from a pitbull to a golden retriever
* Fabric: added dependency overrides for Zoomify (set YACL version to something that exists), ReplayVC (as part of 7a9, so I no longer remember what I did - but whatever it was, it wasn't enough to let us update SimpleVC), Distant Horizons (forced it to cooperate with Chunky); Nvidium has overriden itself (for... some reason)
* „Seen” the Bundle Tutorial

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
* Disabled achievements - you can open them from the Esc menu, anyway
* Disabled Reload Celestial
* Disabled AE2 guide
* Disabled Big Cannons C-key
* Disabled secondary zoom
* Disabled Accessories opening (in Acc's own menu, and then again in Aether's) - can do it from the inventory
* Disabled Things' Toggle Jump Boost and Open Ender Pouch - the latter can be done via a rightclick
* Disabled HT's config
* Disabled everything in VC except Mute and Push-to-talk (latter remapped to ``` ` ```, for easier access during gameplay, due to its proximity to `W`)
* Disabled Presence Footsteps config
* Disabled Jukebox
* Disabled OptiGUI's debug thing
* Disabled MI's flight
* Disabled Substrate's toggle
* Disabled Show Ghostblocks
* Disabled Skill Tree view
* Disabled everything Jade
* Disabled everything TechReborn
* Disabled everything Bumblezone
* Disabled everything ReplayMod
* Disabled everything Iris
* Disabled everything Xaero
* Disabled everything Cave Dust
* Disabled everything Aether
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
* Enabled multiplayer recording (as stated above - that's our main goal here)

### Exordium
* Disabled Chat Buffering, as it was breaking Chat Animations
* Disabled Health Buffering (incl. hunger, etc.), as it was breaking Apple Skin
* Forced Crosshair Updates, otherwise Dynamic Crosshair would break

### BetterStats
* Accepted TOS

### Miniature Shader
* Whatever stuff was in Baseline

### Aether
* Disabled Cumulus button
* Disabled tips

### FlightAssistant
* Made the HUD green (*to MidnightSP: did you change this, or is that the defualt? Cuz it's white in their screenshots*)
* Colors... Uhh... Happened. More color settings just spawned in the config. But the mod wasn't updated? Was me looking at the config enough to make it „fully generate”???
* Disabled HUD by default (it always shows thrust level (cannot be disabled in the „Not Flying (no elytra)” nor „global” menu), which will just be annoying to anyone who hasn't gotten their eltra yet - they can re-enable it on their end after they get one)

### Structure Credits
* Cleared visited structures list
* Cleared any default overrides/blacklists that they had
* Disabled the "visited=don't show again" behaviour (**this must be reset in final release!**, or the players will get spammed with structure notifications)

### Observable
* Survived the announcement

### Zoomify
* Tweaked zoom-in animations a little bit (they are too slow by default (1s, really?) - and, while fixing that, I also played around with animation curves to make them look better at 0.3s speed)
* Disabled zoom-out animation
* ~~Made it so that the mod only works while the player is carrying a spyglass (handled entirely on the client, so if someone doesn't like that - well, they can disable it - but GhostLand is an immersive modpack, so we shall have immersion by default!)~~ *Not anymore, but I'll be back with it in some way, for sure 😈*
* Changed initial zoom level to be 3x at first, and then whatever you left it at by scroll-zooming (by default, scrol-zoom resets)
* Enabled cinematic camera (at only 30%, to not be too obnoxius) becasue that's how OptiFine used to do things and I'm nostalgic for it lol

### Mod Menu
* Disabled update checker

### No Chat Reports
* Moved server safety indicator (on the server list, not in-game) list by 15px Y, due to conflicts with BCC (technically, this would now conflict with any added servers, but why tf would you ever add a second server on a single-server-tied pack?)
* ...And by 2px X, while at it, to make it better line up with BCC's indicator

### Adaptive Tooltips
* For consistency, set YACL-style GUI button everywhere
* Align to corner as a fallback
* Added some very slight transparency

### BetterCompatChecker
* Name: `GhostLand`
* Version: `7-ALPHA` *<---update me!*

### Sparse structures
* Dumped all structures in
* Slightly lowered reduction rates (from the default 2x reduction to 1.75x) for modded structures
* Kept vanilla spread rates as vanilla (1x recuction rate (aka „kept the same”) instead of 2x)

### Create Dynamic Lights
* Disabled LambDynamicLights integration (we're using Sodium Dynamic Lights, so that wouldn't work for us)
* Enabled vanilla mode (becasue we're not using LambDynamicLights and - with both modes disabled - the mod would literally do nothing)

### Veinminer
* No configs were changed - which is very notable because I thought that we'd need to manually get it to cooperate with HT's, but appently they work together by default (chop trees without sneaking, *no Veinminer* (by default) when sneaking)

### Geocluster
* Via a datapack: Re-enabled vanilla oregen. One other thing we need to do via a DP is to switch from using GC's own non-vanilla ores to whatever equivalents other mods add (eg. Create: Nuclear's Urainium instead of Geocluster's). GC will still be used for samples, though - because (obviously) other mods don't add those.
* In settings: allowed modded ores, Deepslate Samples and vanilla veins; disallowed chat spam; cranked up max samples/chunk by 2x; slightly bumped spawn rates (3x not 2x attempts; 10pp higher chance to even attempt in the 1st place)

### EMI
* Verbose Tooltips
* Source of index: Registered+Creative
* Fluid unit: milibuckets
* No searchbar centering
* Hidden by default *(Ctrl+O to show)*
* No changes to keybinds; U, R and A for Usages, Recipes and „Add to favourites” works just fine
* Set up complete crafting trees for some super-basic AE2 components (enough to build a very simple AE2 setup) and pinned those 
* Slightly altered crafting trees for Create's Brass (to use Tinker's instead of the much more expensive Blaze Burners), Train Tracks (to default to the easiest-to-automate sleepers - tho I couldn't do the same for iron ingots (only ending at gravel instead - no cobble->gravel) because that'd mess up all other recipes) and Rose Quartz (it didn't pick up on the recipie at first), and pinned the „standard setup” for trains. Notably, not a lot of adjustments had to be done (only minor tweaks to otherwise pre-configured routes) becasue it seems that Create is supported out-of-the-box. Yay!
* Set up complete crafting trees for Tinker's Controller (the basic-ass-2block-Smeltery one, not the 3x3-big-Smeltery one) and liquid Brass (for those Create craftings mentioned above), and pinned said controller. Also, pinned the Crafting Station (not the item, but the recipie itself - becasue there are just too many damn variants; I didn't bother setting up crafting trees for it for the same reason). This doesn't even cover 2% of what should be pinned and/or what trees should be set up for a „minimum Tinker's setup”, but setting up Tinkers' trees in particular just feels SO TEDIOUS for some reason.
* Fixed a weird crafting loop involving Paper and Twilight Forest (now, paper is crafted using the regular Sugar Cane).
* Prevented EMI from showing mod names under items.
* *pinning Create trains, basic AE2 stuff and just a wee-bit of Tinker's is obviously not everything, just like that one paper loop propapbly isn't the only edge case - but I decided to remove the TODO about configuring pins and to not open a new Known Issue about loops becasue (respectively): this is a good-enough starting point for the pinning process (so good, that it's justifiable to remove the TODO - which doesn't change the fact that there's still a lot of stuff To-Do in this regard), and I didn't find any other bugs YET and that one about paper is now fixed*

### Distant Horizons (server-side)
* `distantGeneratorMode = "PRE_EXISTING_ONLY"`, So that it wouldn't attempt to generate any chunks on its own. This task shall be left to Chunky. For 2 reasons: Chunky tends to be so fast that DH can't keep up (thus leaving holes in LODs), so we'll first let Chunky run, then DH can do its thing at its own pace; DH warned about an unknown generator type (`org.dimdev.dimdoors.world.pocket.BlankChunkGenerator`) that may cause DH's gen to fail. Chunky's won't becasue it generates normal chunks.
* `showGenerationProgress = "LOG" #To not bother every online player with DH`, `generationProgressDisplayIntervalInSeconds = 30` and `generationProgressDisableMessageDisplayTimeInSeconds = 0` because this progress bar is pretty obnoxious
* Cranked to all 4 cores (what could possibly go wrong?)

### VC interaction
* Enabled group and sneak interactions

### Disabled biomes
* Floodplains from BoP
* `biomeswevegone:lush_stacks` and `biomeswevegone:dead_sea`
* All 29 biomes from WilderWild

### WilderWild
* Disabled all 29 biomes (as I just said)
* Disabled modifications to placement for the 6 vanilla biomes it changes.

### Starter kits
* Configured a GhostLand kit
* Removed all default kits

### MI
* Disabled the guidebook

### Tinker's
* Disabled the guidebook

## Things to mention to people
* See: [Issue](#issues) about entering
* The differences between Full, Slim and Tweakable Editions
* There are 2 Kitsune Origins - wool color at their icons indicates the color of the particles you'll be emitting while walking.
* Inching Origin (and other size-changing ones) and Origins: Sizes don't conflict, as Origins: Sizes applies a multiplier, rather than an override. So if you pick Inchling then Normal, you'll be a standard Inchling that we all know and love; if you pick Small, you'll be an even smaller Inchling; you COULD probably make yourself invisible if you combine Inching+Tiny, or you can turn into a regular human by picking Incling and then Giant.
* If they don't have the Analog mod installed (Slim Edition) or have it disabled (default in Tweakable Edition, or could've done so manually in Full Edition), they must enable the resourcepack „Analog-serverside-edition.zip”.
* There are 4 options for skies available: Shaders, Dramatic Skies resourcepack via Celestial mod (you can disable it if you don't want to use DS), Less-dramatic Skies resourcepack via Vanilla Tweaks (default), just a normal Vanilla sky. It's recommneded to not combine them - just pick whichever one you think looks best.
* If you build a Create Mod train, you **MUST** save it as a schematic! This is so that, whenever trains break (hopefully they won't, but you never know), there would be a backup that lets you restore the train to the **EXACT** state that it was in before. This is important because when the trains broke on GL5, we took some *creative liberties* (pun intended), such as a freaking golden rim around the edges (or the fact that we used Copycats as the base building material, instead of trapdoors and stuff, like it was before), when rebuilding them. To be clear, the act of rebuilding on GM1 alone was entirely justified. The trains broke on their own; just magically disappeared. It would be unfair of the server admins to require Ghostland Railway Administration members to go through the struggle of obtaining train casings again because of the server's fault. But because we cheated (let's be honest and call it out for what it was) when rebuilding, *we* were the ones who treated the rest of the playerbase unfairly. Guzio's opinion here: ...And to me, that was the very moment when the server stopped being fun (just like they said in [this video](https://youtu.be/fYpe4KZj9UE): as soon as someone cheats at an SMP, it all suddenly feels meaningless). Well - one out of three. The other one was when the server went offline for 2 weeks because of a critical software failure (it really killed the excellent momentum (with usually >= 3 players at any given time during the day), right as we got an influx of new members, too!) and the other-other one was when Jifo was disqussing plans for GL6 at Palmer's (I thought „What's the point of playing now, if it's soon gonna be gone?”). Because, to be honest, GL5 really had a lot going for it! If it weren't for that 2-week outage and the cheating (discussion at Palmer's was a result of these two, since the playerbase started leaving), there is a chance, however small, that it would've still been alive today. *So, anyway...* Backup your trains people! Let's be sure that they're rebuilt EXACTLY like they were before, so that absolutely 0 materials get cheated in. How knows, maybe that's how we get a year (or more?) -long edition?
* Privacy notes: We accepted BetterStats privacy policy and we have Wiretap installed
* Use Java 21 instead of the default 17 (while at it, you might also want to increase the RAM and add an icon (it unfortnatley doesn't happen automatically for sideloaded packs) - we embed one inside modpack files)

### Pending elections
* Everything already in the questionaire
* Create's power and nuclear mods; also: Big Cannons
* Core tech mod?

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
* Licensed under [MIT](https://github.com/Team-GhostLand/GhostLand7/blob/master/LICENSE) (ie. the „Do whatever the fuck you want”-clause), with the exception of some files (mentioned later).
* [Guzio](https://github.com/GuzioMG), [MidnightSP](https://github.com/Midnight-SP) and other people who didn't push any patches, but nevertheless helped us in some way on [our Discord](https://discord.gg/qCNUYBXY7P) (especially `knpks` and DjPalemkov[https://github.com/DjPalemkov]).
* [__*#GhostLand Project*__](https://github.com/Team-GhostLand/) – *a [Jifo](https://github.com/JIFO0)-Branding initiative*
* This repository contains some files from 2 projects that are not licensed under MIT. We embedded them in compliance with their licenses, but this DOES NOT RE-LICENSE THEM under MIT in any way, shape, or form (we have no right to do so, after all). So if you were to fork/download/clone or otherwise obtain a copy of this project, you either also need to follow their licenses (such as no monetization; make sources public), or **you must remove those files**. One of those files, Async Mod, comes from [this amazing repo](https://github.com/Bliss-tbh/Async-1.20.1/) (seriously amazing, I love those commit messages - btw, I too hate Gradle) and is licensed under [GPL](https://github.com/Bliss-tbh/Async-1.20.1/blob/ver/1.20.1/LICENSE) (ie. if you modify that file, you need to release all changed sources). The other non-MIT project (files: Less-Dramatic Skies resourcepack and everything including Vanilla Tweaks (or VT_) in its name) is [Vanilla Tweaks](https://vanillatweaks.net/). According to their [license](https://vanillatweaks.net/terms/), we need to have a `credits.txt` file with contents specified by them (which we do), which will be included on all main publishing platforms (we placed it inside `overrides`, so when you load this project's MRPACK inside Modrith (our target platform), the file will be included in the profile's root) and „our pack must include proper modification and/or additions” (which - if you count the modpack as a whole - probably counts, considering it has over 300 said modifications) and mustn't be monetised (which it isn't). That's it for non-MIT projects, but we also have a resourcepack that got extracted from the [Analog](https://modrinth.com/mod/analog) mod and our own fork of Create Track Map (CTM Restitched), but they're both licensed under [MIT](https://github.com/Gibatron/analog/blob/1.20/LICENSE), so we can safely include it in a different MIT project, as long as we include their exact wording of their licenses (which I just did, with that link - well, technically, only for Analog, but that CTM fork is made by us, so this pack's license is the same for it, as well).