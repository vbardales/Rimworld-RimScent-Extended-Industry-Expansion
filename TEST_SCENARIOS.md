# Functional test scenarios

These scenarios are for a future RimWorld validation run. They do not claim execution.

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
