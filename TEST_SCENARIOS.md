# Functional test scenarios

These scenarios are for a future RimWorld validation run. They do not claim execution.
They must become ordinary, non-`@wip` Gherkin scenarios before this mod can move
from `done` to `tested`; every conditional integration needs its own completed
pass, and no manual test remains as a substitute for a green run.

## Base-game scent patches

Prerequisites: RimScent and RimScent Extended enabled; no optional integration mods required.

1. Start a new colony and place a crematorium and a smelter.
2. Observe pawns nearby with each building unpowered, powered but switched off, and powered and switched on.
3. Expected: the scent thought is applied only while the powered building is switched on.
4. Place a torch, a brazier, and chemfuel; observe nearby pawns while the torch is lit and unlit.
5. Expected: torch scent follows active fuel use; chemfuel applies its intended upstream fuel scent.
6. Spawn representative mould and slime filth and inspect the resulting thoughts.
7. Expected: the new local thoughts use their translated label and description without errors.

## Optional integrations

Run each case with RimScent and RimScent Extended enabled, adding only the named optional mod.

| Integration | Action | Expected result |
| --- | --- | --- |
| Epochs - Tallow | Place a tallow torch and stand a pawn nearby. | The tallow scent applies while the torch exists/burns; no load errors. |
| Epochs - Incense | Place both incense burners and stand a pawn nearby. | The corresponding upstream incense thoughts apply once, without double counting. |
| Medical Supplements | Place smelling salts and pharmacy items. | The expected local scent thoughts apply; no patch errors. |
| Combat Extended | Load a colony with CE blackpowder content and inspect the thought. | `RimScent_BlackpowderOdor` is present and displayed in French when the game starts in French. |

## Regression coverage

Repeat a representative base-game scenario and the CE scenario in English and French. Check
the log, a new save, and an existing save. Confirm no raw translation keys, English fallback,
or patch/load errors. These checks require a game session and remain unexecuted.

## Evidence retention

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
