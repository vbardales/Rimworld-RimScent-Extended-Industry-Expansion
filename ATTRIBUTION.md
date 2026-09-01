# Attribution

## RimScent

par **reo / ocarina0001** — MIT.
[Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3645569466)

Mod compagnon, pas un fork. Aucun fichier de RimScent n'est copié ni redistribué. Il est
déclaré en dépendance dure et on utilise `RimScentReworked.ModExtension_Scent`, son propre
point d'extension public.

Vingt des vingt-deux saletés ajoutées **réutilisent les `ThoughtDef` de RimScent** plutôt
que d'en créer de nouvelles : elles sont citées par leur `defName`, jamais copiées.

## Mods lus par cette extension

Rien n'en est copié. Chacun est visé uniquement par des `PatchOperation`, dans un dossier
qui ne se charge que si le mod est actif :

- **Epochs - Tallow** (`det.epochstallow`)
- **Epochs - Incense** (`det.epochsincense`) — ses deux `ThoughtDef` orphelines sont
  **réutilisées telles quelles**, par `defName`, sans être recopiées ni modifiées.
- **Medical Supplements** (`mlie.medicalsupplements`)
- **Combat Extended** (`ceteam.combatextended`) — seule une traduction française y est
  ajoutée, pour une pensée que RimScent définit lui-même.

## Medieval Overhaul

par **DankPyon** — pas de licence annoncée.

**Rien n'en est repris** : ni def, ni texture, ni valeur. Sa liste de bâtiments odorants a
servi de checklist pour repérer ce que le jeu de base laissait muet ; les trois odeurs qui
en sont sorties (crématorium, fonderie, fermentation) sont écrites ici de zéro et visent des
defs vanilla.

## Ce mod

MIT, © nelim. Defs, patchs et traductions sont un travail original.
