# RimScent Extended: Industry Expansion

What burns, what melts, what is chemical, and the twenty-two filth types nobody could smell.
For RimWorld 1.6.

## Crematorium, smelter, fermentation

Three gaps in the base game, spotted by contrast with *Medieval Overhaul*'s inventory: nothing
from that mod is reused — it declares no licence — but its list of smelly buildings served as a
checklist.

The crematorium and the smelter both carry a `CompProperties_Power` **and** a
`CompProperties_Flickable`, so they only smell when powered and switched on. That second test is
exactly the one RimScent forgot and the socle's fix added — an unlit crematorium would otherwise
have stunk permanently.

The fermenting barrel and the brewery have no power connection at all, so they will smell all the
time. That is defensible — a barrel smells of yeast even empty — but it is a choice, not a
necessity.

`RimScentExtended_Scent_Fermenting` is shared with Everyday Life (beer, wort, Alpha Crafts vats)
and is therefore **declared in the socle**.

## Torches and chemfuel

Torches, braziers and wall torches, at a gentler value than the campfire they are modelled on.
Biofuel refinery, chemfuel tanks, and chemfuel in storage: RimScent covered the puddle and the
generators, never the drum.

Synthetic drugs and neutroamine: chemical smell, the same one the medical labs use.

## Twenty-two more filth types

RimScent covers 12 of the 42 filth types in the base game and the DLCs. This mod picks up 22 more,
the overwhelming majority by **reusing the upstream thoughts**: they exist, they are translated,
and the missing filth is often the twin of one already covered — dried blood against fresh blood,
volcanic ash against ash, rubble against dirt.

**Two of those thoughts were defined upstream and attached to nothing.**
`RimScent_FirefoamScent`, whose description talks about firefoam, and `RimScent_ExplosionScent`,
sulphur and ozone. They are finally wired up.

Only two filth types deserved a scent of their own: mould and slime.

Scattered documents, on the other hand, smell of paper rather than grime: they went to Everyday
Life with the books and the knick-knacks.

## Third-party mods

| Mod | What smells |
|---|---|
| **Epochs - Tallow** | tallow torches, wall torch, raw tallow |
| **Epochs - Incense** | its two incense burners, **using its own thoughts** |
| **Medical Supplements** | smelling salts, pharmacy smell |
| **Combat Extended** | the black powder thought RimScent defines for it, translated |

Tallow torches have no `CompRefuelable` but a `CompProperties_DestroyAfterDelay`: they destroy
themselves when they burn out, so **a torch that exists is a torch that is lit** — the gate is
automatic.

**Epochs - Incense defines two `ThoughtDef`s that nothing applies.** `IncenseThought` and
`StandingIncenseThought`, both "pleasant smell" at +2, are cited nowhere outside their own file —
in no mod on the Workshop — and the mod ships no assembly. Its incense burners are therefore
purely decorative, while their description promises "a pleasant floral aroma". They are wired up
by reusing **the author's own thoughts** rather than creating ours: it is what they intended, and
no double-counting is possible since nothing else applies them.

## Load order

Patch operations apply in mod order: `About.xml` declares in `loadAfter` **every** mod this one
patches, not just the RimScent family.

## Requirements

- [RimScent](https://steamcommunity.com/sharedfiles/filedetails/?id=3645569466)
- RimScent Extended (the socle)

None of the four third-party mods is required: each section loads only if its mod is active,
through `LoadFolders.xml`. Nothing is written to the save.

## Licence

MIT — see [LICENSE](LICENSE) and [ATTRIBUTION.md](ATTRIBUTION.md).
