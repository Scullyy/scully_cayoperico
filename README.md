# 🏝️ scully_cayoperico 🏝️
Introducing a seamless travel solution for all adventurers: embark on exhilarating journeys to and from the captivating shores of Cayo Perico with ease!

# Support
For support join my discord here: https://discord.gg/scully

# Installation Instructions
- Place `scully_cayoperico` inside your `resources` folder.
- Add `ensure scully_cayoperico` to your `server.cfg`.
- Adjust the included `config.lua` to your preference.

# Requirements
- [ox_lib](https://github.com/overextended/ox_lib/releases)
- Gamebuild 2189 or above.

# Features
- Both San Andreas and Cayo Perico are enabled alongside one another.
- You can view both maps on the minimap and pause menu without issues such as the "hover bug" or disable it if you use another.
- Mansion gates are unlocked.
- Hanger gates have been opened but can be closed again by following what is mentioned [here](#faq).
- Anti-aircraft weapons, boat blockers, sea gate and sea mines have been disabled but can be re-enabled by following what is mentioned [here](#faq).
- Can keep radio stations, disable them completely or show "No Signal" instead.
- Includes locale support, PR's for more languages are welcomed and appreciated.
- Can check if a player is on Cayo Perico using the `onCayoPerico` statebag.

# FAQ <a id="faq"></a>
**How do I close the hanger gates?**
Navigate to `data/ipl.lua` and replace both the `h4_islandairstrip_doorsopen` and `h4_islandairstrip_doorsopen_lod` IPL's with `h4_islandairstrip_doorsclosed` and `h4_islandairstrip_doorsclosed_lod`.

**How do I enable the anti-aircraft guns?**
Navigate to `data/ipl.lua` and add both the `h4_aa_guns` and `h4_aa_guns_lod` IPL's to the table.

**How do I enable the boat blockers?**
Navigate to `data/ipl.lua` and add the `h4_boatblockers` IPL to the table, I advise not doing this though as this will prevent boats from docking in most areas.

**How do I enable the sea gate?**
Navigate to `data/ipl.lua` and add the `h4_underwater_gate_closed` IPL to the table.

**How do I enable the sea mines?**
Navigate to `data/ipl.lua` and add the `h4_islandx_sea_mines` IPL to the table.