# Attribution

## RimScent

by **reo / ocarina0001** — MIT.
[Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3645569466)

A companion mod, not a fork. No file from RimScent is copied or redistributed. It is declared
as a hard dependency, and we use `RimScentReworked.ModExtension_Scent`, its own public extension
point.

Twenty of the twenty-two added filth types **reuse RimScent's own `ThoughtDef`s** rather than
creating new ones: they are cited by `defName`, never copied.

## Mods read by this expansion

Nothing is copied from them. Each is targeted only by `PatchOperation`s, in a folder that loads
only if the mod is active:

- **Epochs - Tallow** (`det.epochstallow`)
- **Epochs - Incense** (`det.epochsincense`) — its two orphaned `ThoughtDef`s are **reused as
  they are**, by `defName`, without being copied or modified.
- **Medical Supplements** (`mlie.medicalsupplements`)
- **Combat Extended** (`ceteam.combatextended`) — only a French translation is added, for a
  thought RimScent defines itself.

## Medieval Overhaul

by **DankPyon** — no licence declared.

**Nothing is taken from it**: no def, no texture, no value. Its list of smelly buildings served
as a checklist for spotting what the base game left silent; the three smells that came out of it
(crematorium, smelter, fermentation) are written here from scratch and target vanilla defs.

## This mod

MIT, © nelim. Defs, patches and translations are original work.
