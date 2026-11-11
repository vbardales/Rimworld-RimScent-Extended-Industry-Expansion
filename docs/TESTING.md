# Testing

## Passes (PICKLE.md, "Passes Pickle")

Three runs, all through the shared WSL launcher after a ticket (`scripts/Submit-PickleRun.ps1`), never by hand:

| Pass | Map | Features | What it proves |
| --- | --- | --- | --- |
| 1. Without optional mods | `Tests/Pickle/wsl-deps.sans-facultatifs.map` | `01-minimal-load`, `02-scents` | The mod stands alone with RimScent and RimScent Extended: own defs load, filth, torch and gated building scents reach a colonist, no error logged. |
| 2. With optional mods | `Tests/Pickle/wsl-deps.facultatifs.map` | `04-optional-integrations` | Tallow, Incense, Medical Supplements and Combat Extended integrations apply, each in the setting where it loads (all four are `loadAfter` and `IfModActive` gates; no two exclude each other, so one combined pass is enough). |
| 3. French | `Tests/Pickle/wsl-deps.sans-facultatifs.map`, game language French | `03-french` | The French thought description is shown (no raw key, no English fallback). |

No incompatible mod is declared, so no incompatibility pass.

Not runnable yet:
- Pass 2 needs Epochs - Tallow (3502180016) and Epochs - Incense (3072579620) on disk: `Check-FeatureDefs.js` reports both missing from the Workshop folder.
- A powered crematorium or smelter (the "powered AND switched on" case) has no Pickle step: there is no step that gives a building power. To ask NPT; until then only the two negative cases (switched off, switched on but unpowered) are written (`02-scents` S6, S7).

Offline, run from the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Tests/Check-Mod.ps1
```

`Tests/Check-Mod.ps1` is the only local script (hard dependencies, `loadAfter` and `LoadFolders` gates; one row in `scripts/LOCAL_SCRIPTS.md`). XML, About, images and French keys are the shared `Check-ModBasics.ps1`, `Check-Translations.ps1` and `Check-DefInjected.ps1`. There is no unit-test project: the mod is XML only.

## Functional scenarios

These scenarios are for a future RimWorld validation run. They do not claim execution.
They must become ordinary, non-`@wip` Gherkin scenarios and run green (`playTests`) before this mod is tested;
every conditional integration needs its own completed
pass, and no manual test remains as a substitute for a green run.

### Base-game scent patches

Prerequisites: RimScent and RimScent Extended enabled; no optional integration mods required.

1. Start a new colony and place a crematorium and a smelter.
2. Observe pawns nearby with each building unpowered, powered but switched off, and powered and switched on.
3. Expected: the scent thought is applied only while the powered building is switched on.
4. Place a torch, a brazier, and chemfuel; observe nearby pawns while the torch is lit and unlit.
5. Expected: torch scent follows active fuel use; chemfuel applies its intended upstream fuel scent.
6. Spawn representative mould and slime filth and inspect the resulting thoughts.
7. Expected: the new local thoughts use their translated label and description without errors.
8. Place a biofuel refinery and a chemfuel tank, and store chemfuel in a stockpile; stand a pawn nearby.
9. Expected: the refinery, the tank and the stored chemfuel each apply their scent thought; chemfuel out of storage does not.
10. Hold synthetic drugs and neutroamine in a pawn's reach or in storage and inspect the thoughts.
11. Expected: the pharmacy scent applies to the drugs and to neutroamine, as the description promises.
12. Spawn each of the 22 filth types the patches cover (see `Mod/Patches/Filth.xml`) and inspect the thought of each.
13. Expected: each applies the thought its patch names; `Filth_FireFoam` uses `RimScent_FirefoamScent` and `Filth_BlastMark` the explosion thought; no filth type applies two thoughts.

### Optional integrations

Run each case with RimScent and RimScent Extended enabled, adding only the named optional mod.

| Integration | Action | Expected result |
| --- | --- | --- |
| Epochs - Tallow | Place a tallow torch and stand a pawn nearby. | The tallow scent applies while the torch exists/burns; no load errors. |
| Epochs - Incense | Place both incense burners and stand a pawn nearby. | The corresponding upstream incense thoughts apply once, without double counting. |
| Medical Supplements | Place smelling salts and pharmacy items. | The expected local scent thoughts apply; no patch errors. |
| Combat Extended | Load a colony with CE blackpowder content and inspect the thought. | `RimScent_BlackpowderOdor` is present and displayed in French when the game starts in French. |

### Regression coverage

Repeat a representative base-game scenario and the CE scenario in English and French. Check
the log, a new save, and an existing save. Confirm no raw translation keys, English fallback,
or patch/load errors. These checks require a game session and remain unexecuted.

### Evidence retention

Pickle evidence stays on disk under `Tests/Pickle/Evidence/` and is intentionally
ignored by Git. For a completed pass, keep only `summary.json` and `junit.xml`;
keep a single reduced review capture only when it is the sole proof of a visual
claim. Keep `Player.log` only for a failing or incomplete run. Delete
`report.html`, `messages.ndjson`, duplicate captures, films, and superseded
pass directories after recording the verdict, tested SHA, pass map, language,
and retained-file names in a short committed summary under `docs/runs/`.

No evidence directory is currently present or tracked, and no `.dds` asset is
tracked. The `.gitignore` rules prevent either class of generated artifact
from entering a future commit.
