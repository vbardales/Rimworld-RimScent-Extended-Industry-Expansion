# RimScent Extended: Industry Expansion

Ce qui brûle, ce qui fond, ce qui est chimique, et les vingt-deux saletés que personne ne
sentait. RimWorld 1.6.

## Crématorium, fonderie, fermentation

Trois trous du jeu de base, repérés par contraste avec l'inventaire de *Medieval Overhaul* :
rien de ce mod n'est repris — il n'annonce pas de licence — mais sa liste de bâtiments
odorants a servi de checklist.

Le crématorium et la fonderie portent tous deux un `CompProperties_Power` **et** un
`CompProperties_Flickable` : ils ne sentent donc que sous tension et interrupteur fermé. Ce
second test est précisément celui que RimScent oubliait et que le correctif du socle a
ajouté — un crématorium éteint aurait sinon empesté en permanence.

Le fût de fermentation et la brasserie, eux, n'ont aucune alimentation : ils sentiront tout
le temps. C'est défendable — un fût sent la levure même vide — mais c'est un choix, pas une
fatalité.

`RimScentExtended_Scent_Fermenting` est partagée avec Everyday Life (bière, moût, cuves
d'Alpha Crafts) et reste donc **déclarée dans le socle**.

## Torches et chimiburant

Torches, braseros et torches murales, à une valeur plus douce que le feu de camp sur lequel
ils sont calqués. Raffinerie de biocarburant, cuves de chimiburant, et le chimiburant en
réserve : RimScent couvrait la flaque et les générateurs, jamais le bidon.

Drogues de synthèse et neutroamine : odeur de produit chimique, la même que les laboratoires
médicaux.

## Vingt-deux saletés de plus

RimScent couvre 12 des 42 saletés du jeu de base et des DLC. Ce mod en rattrape 22, dont
l'écrasante majorité en **réutilisant les pensées de l'amont** : elles existent, elles sont
traduites, et la saleté manquante est souvent la jumelle d'une saleté déjà couverte — sang
séché contre sang frais, cendre volcanique contre cendre, gravats contre terre.

**Deux de ces pensées étaient définies en amont et accrochées à rien.**
`RimScent_FirefoamScent`, dont la description parle justement de mousse extinctrice, et
`RimScent_ExplosionScent`, soufre et ozone. Elles sont branchées enfin.

Deux saletés seulement méritaient une odeur à elles : la moisissure et la vase.

Les documents éparpillés, eux, ne sentent pas la crasse mais le papier : ils sont partis
dans Everyday Life avec les livres et les bibelots.

## Mods tiers

| Mod | Ce qui sent |
|---|---|
| **Epochs - Tallow** | torches au suif, torche murale, suif brut |
| **Epochs - Incense** | ses deux brûle-encens, **avec ses propres pensées** |
| **Medical Supplements** | sels d'ammoniac, odeur de pharmacie |
| **Combat Extended** | la pensée poudre noire que RimScent définit pour lui, traduite |

Les torches au suif n'ont pas de `CompRefuelable` mais un `CompProperties_DestroyAfterDelay` :
elles se détruisent en s'éteignant, donc **une torche qui existe est une torche allumée** —
le gate est automatique.

**Epochs - Incense définit deux `ThoughtDef` que rien n'applique.** `IncenseThought` et
`StandingIncenseThought`, toutes deux « pleasant smell » à +2, ne sont citées nulle part
ailleurs que dans leur propre fichier — dans aucun mod du Workshop — et le mod ne contient
aucune assembly. Ses brûle-encens sont donc purement décoratifs, alors que leur description
promet « a pleasant floral aroma ». On les branche en réutilisant **les pensées de
l'auteur** plutôt qu'en créant les nôtres : c'est ce qu'il avait prévu, et aucun double
compte n'est possible puisque rien d'autre ne les pose.

## Ordre de chargement

Les opérations de patch s'appliquent dans l'ordre des mods : `About.xml` déclare en
`loadAfter` **tous** les mods que ce mod patche, pas seulement la famille RimScent.

## Dépendances

- [RimScent](https://steamcommunity.com/sharedfiles/filedetails/?id=3645569466)
- RimScent Extended (le socle)

Aucun des quatre mods tiers n'est requis : chaque volet ne se charge que si son mod est
actif, via `LoadFolders.xml`. Rien n'est écrit dans la sauvegarde.

## Licence

MIT — voir [LICENSE](LICENSE) et [ATTRIBUTION.md](ATTRIBUTION.md).
