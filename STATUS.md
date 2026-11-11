---
mod: RimScent Extended: Industry Expansion (unofficial)
packageId: nelim.rimscent.extended.industry
repo: Rimworld-RimScent-Extended-Industry-Expansion
remote: https://github.com/vbardales/Rimworld-RimScent-Extended-Industry-Expansion.git
visibility: public
detached: yes
workflow_stage: playTests[1.0.0]
licence: silent
licence_at: "2026-09-22: Medieval Overhaul declares no licence; it served only as a checklist, RimScent (MIT) is a dependency"
upstream_mod_remotes: N/A
settings_audit: not_applicable
localization: complete
translation_en: complete
translation_fr: pending_review
dependencies: declared
workshop_required_items: "n/a, not released yet"
showcase: complete
workshop: 3811308567
published: no
tested_on: never
remaining:
  - unverified: 8.c Pickle tickets filed 2026-11-11 at 077d41a: pass 1 (01, 02, no optionals) 20261111-181718-162-94c8 into Tests/Pickle/Inbox/pass1-initial; pass 3 (03-french, French) 20261111-181720-555-b6c2 into Tests/Pickle/Inbox/pass3-french; at RUN_DONE read summary.json then junit.xml, triage the Inbox
  - unverified: 8.c pass 1 (94c8) read 2026-11-11: 3 of 11 green; S1-S5 red (thought absent: scenario never placed Larson nor sandboxed settings, fixed in 02-scents.feature Background), refiled as 20261111-183229-972-80f0 into Tests/Pickle/Inbox/pass1b-s1-s5; S8-S10 red (NPT power step, battery net none; NPT renamed it "is powered by a battery", patched at 4834293), scenarios switched to it, refiled as 20261111-183347-805-96f1 into Tests/Pickle/Inbox/pass1c-s8-s10; Inbox/pass1-initial to delete once 80f0 and 96f1 are read; b6c2 read 2026-11-11: F1 red, Larson has no RimScentExtended_Scent_Mould (base DirtScent thoughts fire), same symptom as S1: suspect the Filth_MoldyUniform patch in Mod/Patches/Filth.xml lines 285-311 (no patch error in Player.log); check S1 and F1 together once 80f0 and 96f1 are read; Inbox/pass3-french to delete after triage
  - feature: PUBLICATION.md not written yet (not gallery work, can be done while tickets wait)
  - unverified: 8.c nothing has run in a game yet (Pickle passes 1 and 3 to file; pass 2 blocked: Epochs - Tallow 3502180016 and Epochs - Incense 3072579620 not on disk)
  - defect: Art/echo.png and ModIcon-signature-candidate.png off the closed Art/ set
  - unverified: no non-wip Pickle Gherkin suite has been written or run; every conditional integration requires its own completed pass before tested
  - unverified: functional effects, logs, English/French display, and save behaviour have never been observed; no manual check may remain pending for tested
  - defect: Mod/About/PublishedFileId.txt (id 3811308567) is untracked
session:      audit:      2026-09-22, static evidence only
updated: 2026-11-11, playTests: 2 Pickle tickets filed (passes 1 and 3), waiting for RUN_DONE
protocols_read_sha: 3937f9048f97c0e3cd28ab4c492ddef003895f23
---

# RimScent Extended: Industry Expansion — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it.

The fields above were read off the disk on 2026-09-12. Four cannot be, and wait for whoever
holds this mod:

- **`stage`** — one of `port`, `showcase`, `preTest`, `done`, `tested`, `published`. Filled in
  from the session group where one exists; confirm it.
- **`tested_on`** — the date of the last run in game. Empty means never.
- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
- **`remaining`** — what is left, in three kinds: `feature` for something missing from a first
  release, `defect` for a known fault left unfixed, `unverified` for what could not be checked.
  The line already there is true of nearly the whole repository; replace it once it stops being.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

## Audit — 2026-09-22

Audited against `AUDIT.md`, `PUBLISHING.md`, `STYLE_RIMWORLD.md`,
`MOD_SETTINGS.md`, and `TRANSLATIONS.md`. The distributed root is `Mod/`.
The enclosing Git root is `C:/Users/nelim/Documents/rimworld`, not this directory;
the mod remains a directory in that monorepo (`detached: no`). The audit base was
`e1b09c690a205d3b179d5263e9458d6b63fe7984` (2026-09-22). No existing local
change was present under this mod before this audit; unrelated monorepo changes were
not inspected or altered. This audit changes only `STATUS.md` and did not launch RimWorld.

### Ordered workflow result

The previous `stage` was blank (an automatic-sweep placeholder), so it was not a
certified workflow state. The retained stage is `dansMonoRepo`, using the exact
workflow label. Its next transition is not passed: this directory has no autonomous
Git repository, project remote, or demonstrated first pushed project commit. The
configured `rimscent-industry` remote belongs to the enclosing monorepo and does not
establish that transition.

Independent later evidence is retained without inflating the cumulative stage:

- All 21 distributed XML files, including About metadata, LoadFolders, definitions,
  patches, and French resources, parsed successfully.
- Direct image inspection found a complete RimWorld-style industry Preview with readable
  English title and summary, and a distinct 128-pixel worker/mascot ModIcon. `Preview.png`
  is 896 x 504 pixels and 692,624 bytes; `ModIcon.png` is 128 x 128 pixels and 23,173
  bytes. Both satisfy delivered-file constraints.
- The two root/distributed MIT license copies are present. `ATTRIBUTION.md` records the
  RimScent MIT dependency and says the unlicensed Medieval Overhaul was only a checklist;
  the pre-existing `silent` decision is retained rather than re-decided from unavailable
  current upstream evidence. As a public silent project, its required `(unofficial)`
  suffix and opening notice are absent from both delivered metadata and README.
- The two hard dependencies in `About.xml` are RimScent and RimScent Extended. The four
  non-hard integrations are each both `loadAfter` and guarded by matching
  `LoadFolders.xml` `IfModActive` entries. This establishes the declarations, not their
  runtime loading or every patch target.
- No C# project, assembly, `ModSettings`, Keyed resource, or `MainButtonDef` is delivered.
  This XML-only patch mod has no useful player setting, no empty settings page, and no
  MainButtons shortcut: `settings_audit: not_applicable` is justified statically.
- English is supplied by eight own `ThoughtDef` labels/descriptions. The corresponding
  sixteen French DefInjected entries are present, nonempty, and use the normalized stage
  handles shown by their source labels; the gated Epochs Tallow thought is likewise covered.
  The two Combat Extended French entries cannot be resolved without that target's defs,
  so `translation_fr` and overall `localization` remain `partial`, not defective.

`Check-DefInjected.ps1` was attempted with the local RimScent Extended target, but it
did not produce a terminal per-key summary on the second literal-path invocation; its
earlier invocation also lacked the optional CE and Epochs Tallow targets. It is therefore
not counted as a passing localization test.

No test project, test-result artefact, functional scenario, Pickle suite, game session,
log review, or save test exists in this checkout. Those are unverified, not defects.

### Later transition blockers observed

If/when the mod is detached, the delivered `About.xml` still needs its repository `<url>`
and the required final `[url=URL_DU_DEPOT]Source code on GitHub[/url]` description link.
`CHANGELOG.md`, `.gitignore`, and `.gitattributes` are also absent from this project.
These observations do not change the already-blocked `dansMonoRepo` result.

## Standalone repository initialization — 2026-09-22

After the audit, this directory was initialized directly as its own Git repository, without
a subtree split. It is on the stable `main` branch and contains the audited state in initial
commit `b47485e` (`Initialize RimScent Extended Industry
Expansion`). `origin` is configured as
`https://github.com/vbardales/Rimworld-RimScent-Extended-Industry-Expansion.git`.

The rebase preserved the pre-existing remote history and replayed this initialization as
`b47485e`; the branch was then pushed and verified at `1f157c8758bea60bee02bbedd2062b08f44f0312`.
This establishes `detached: yes` and the remote/first-push portion of the transition. The
cumulative stage remains `dansMonoRepo` because the mandatory first-transition documentation
is still incomplete. No Workshop change or RimWorld run was made.

## horsMonoRepo completion — 2026-09-22

The standalone repository, `origin` remote, and pushed `main` branch are now established.
The first-transition documentation is English and complete: `README.md`, `ATTRIBUTION.md`,
root and distributed MIT `LICENSE` copies, `CHANGELOG.md`, `.gitignore`, and `.gitattributes`.
The recorded public `silent` decision is reflected in the exact `(unofficial)` title suffix and
opening notice. `About.xml` now contains the repository URL and ends with the required
Steam-formatted source-code link. The cumulative workflow stage is therefore `horsMonoRepo`.

## Static progression to options — 2026-09-22

The independent evidence recorded by the audit now establishes the next three transitions:

- `horsMonoRepo` -> `ModIcon générée`: the delivered `Mod/About/ModIcon.png` is a directly
  inspected 128 x 128 PNG (23,173 bytes). This XML-only project ships no compilable assembly.
- `ModIcon générée` -> `Preview générée`: the delivered `Mod/About/Preview.png` is a directly
  inspected 896 x 504 PNG (692,624 bytes), below the Workshop one-megabyte limit.
- `Preview générée` -> `preOptions`: the Preview has distinct amber and green accents, and the
  English description, public naming, repository URL, and final source-code link are present.
- `preOptions` -> `options`: there is no C# project, settings implementation, `ModSettings`,
  or `MainButtonDef`; no useful setting, empty settings page, or shortcut is exposed. The
  existing `settings_audit: not_applicable` therefore satisfies this static gate.

The cumulative stage is `options`. `l10n` is not yet established because the French Combat
Extended DefInjected target remains unresolved; no in-game result is inferred from this
static progression.

## l10n completion — 2026-09-22

The missing target was traced correctly: `RimScent_BlackpowderOdor` is not defined by Combat
Extended, but by RimScent's `1.6/Mods/Combat Extended` module when CE is active. RimScent
Workshop item `3645569466` was downloaded into an ignored WSL test directory; its
`CE_BlackpowderScent.xml` defines that ThoughtDef with the `blackpowder_odor` stage handle.

`Check-DefInjected.ps1` was then run against a minimal ignored target containing the eight
local ThoughtDefs plus that downloaded RimScent/CE module. It checked all 18 French
DefInjected entries with `0` errors. The eight English source Def values are the native
English coverage. This validates `localization`, `translation_en`, and `translation_fr` for
entry to `preTest`; French and English display in a running game remain unverified.

The cumulative stage is `l10n`.

## preTest entry — 2026-09-22

Static dependency review establishes `l10n` -> `preTest`. `About.xml` declares the two
hard dependencies actually used by this extension: `reo.RimScent` and
`nelim.rimscent.extended`. The four optional payload roots (`CE`, `EpochsIncense`,
`EpochsTallow`, and `MedicalSupplements`) each have a matching `IfModActive` LoadFolders
gate and `loadAfter` declaration. All 21 distributed XML files parse successfully.

This verifies the declarations and conditional layout, not the presence of external mods,
patch-target resolution, or runtime behaviour. The cumulative stage is `preTest`.

## Offline test result — 2026-09-22

`powershell.exe -NoProfile -ExecutionPolicy Bypass -File Tests/Check-Mod.ps1` passed.
It checked all 21 distributed XML files, the delivered metadata and source-link contract,
hard dependencies and optional LoadFolders gates, 16 local French ThoughtDef fields, and
the dimensions/size limits of both delivered PNG files. `docs/TESTING.md` now records
the base-game, optional-integration, and EN/FR regression scenarios for a later game run.

This is an offline XML/contract result only. It does not establish patch-target resolution
against every external mod, gameplay effects, logs, saves, Pickle results, captures, or
translated display in RimWorld.

## Re-audit — 2026-09-26

`AUDIT.md` was reread and applied at standalone revision
`a129858f5d890d53d172cd7f0e7409c299f0b3f0`. The session title is
`RimScent Extended: Industry Expansion (unofficial) / preTest`, exactly matching
the current `stage`.

No prepublication has occurred. The required delivered
`Mod/About/PublishedFileId.txt` is absent from this checkout and `origin/main`,
and no junction in RimWorld's `Mods/` directory targets this mod's delivered
`Mod/` folder. No Workshop identifier or prepublication completion is claimed.
No `.dds`, `Tests/Pickle/Evidence/`, or `docs/runs/` evidence was tracked or
present to remove. `.gitignore` now excludes generated `.dds` files and on-disk
Pickle evidence. `docs/TESTING.md` specifies
that only `summary.json` and `junit.xml` are retained after a successful pass;
`Player.log` is retained only for failures/incomplete runs and visual proof only
when indispensable.

The upstream companion repository `RimScentExtended` is a standalone Git
repository (`origin` `vbardales/Rimworld-RimScent-Extended`, revision `e73680a`)
with a Pickle suite. Its code/tests are a reference for future upstream PR work;
they are not evidence that this expansion's XML patches have run.

The stage remains `preTest`. To reach `done`, this repository needs its own
written, non-`@wip` Gherkin coverage for the behaviour that only a running game
can show. To reach `tested`, all of those scenarios, including each conditional
integration pass, must finish green and leave no manual validation pending.

## Dependencies (2026-11-11, revision 486705a)

Hard dependencies (`modDependencies`, both required by the patches, which target RimScent defs and RimScent Extended shared scents):
- `reo.RimScent`, Workshop 3645569466.
- `nelim.rimscent.extended`, Workshop 3811307392, source https://github.com/vbardales/Rimworld-RimScent-Extended.

Optional integrations, each a `loadAfter` entry and an `IfModActive` folder in `LoadFolders.xml` (not hard dependencies, so not in `OptionalCompat.xml`, AUDIT 4.b): `det.epochsincense` (EpochsIncense), `det.epochstallow` (EpochsTallow), `mlie.medicalsupplements` (MedicalSupplements), `ceteam.combatextended` (CE).

DLC: none required. `supportedVersions`: 1.6. No animal added, so the four animal integrations do not apply. Workshop required items: `n/a, not released yet` (decision of the owner, 2026-11-10: to be set by hand at prepareRelease or publish).

## Settings audit (2026-11-11, revision 3e2961e)

`settings_audit: not_applicable`.

- **Inventory:** the mod is XML only. `git ls-files` lists no `.cs`, `.csproj` or `.dll`; the delivered `Mod/` holds `About`, `Defs`, `Patches`, `Languages`, the four optional folders and `LoadFolders.xml`. No `ModSettings`, `MainButtonDef`, `Keyed` resource or settings key appears in any XML.
- **What the mod does:** its patches add RimScent smell thoughts to vanilla filth, industry, torch, chemfuel and drug defs, and eight own ThoughtDefs. The effect is the scent system of RimScent itself; this mod exposes no value a player would tune that RimScent or RimScent Extended does not already own.
- **Decision:** no setting is useful. No settings page and no MainButtons shortcut are shipped (nothing empty, nothing hidden).
- **Applied at:** not applicable (no setting, so no application moment or scope).
- **Tests (MOD_SETTINGS.md section 4):** not applicable for the same reason. In-game confirmation that no empty page appears under Mod options stays `unverified` until `playTests`.
- **Defects and unverified:** none beyond the `unverified` lines in `remaining`.

## Translation audit (2026-11-11, revision 4a314e4)

- **Where the French lives:** `Mod/Languages/French/DefInjected/ThoughtDef/` (four files) plus the gated `CE/` and `EpochsTallow/` folders. English is the source value in the Defs; no Keyed text, no code text.
- **Coverage:** `Check-Translations.ps1` PASS (16 source texts and their French injections, no duplicate, no stale entry). `Check-DefInjected.ps1` with the mod, RimScent (3645569466) and RimScent Extended (3811307392) as targets: 18 keys checked, 0 errors, including the Combat Extended and Epochs Tallow keys.
- **French rules:** all 18 strings read in full: no vous, tu or nous, no "(e)", no slash; nothing agrees with a pawn, so no gendered form is needed.
- **Review:** ChatGPT review twice (2026-11-11): two wording fixes applied (smelter, pharmacy descriptions), the rest rejected with a reason (CE source text is external, supplied in `docs/translation-review-english.json`; `PUBLICATION.md` not written yet). French review by Virginie: validated on 2026-11-11 at revision 4a314e4 ("je valide la review"), then CANCELLED on 2026-11-11 (owner, via Audit): the ChatGPT review may have seen a truncated file (review-translation page-header bug, fixed and synced 2026-11-11 evening). `translation_fr: pending_review` until Virginie validates the new answer. Review rerun 2026-11-11 (page 1 of 1): 1 applied (Slime description "sous les pieds"), 2 rejected (PUBLICATION.md absent: written at writeDocs; CE source typos `envokes`, `nostolgia`, `smokey`: non-original mod, source not edited). Check-Translations PASS. Second rerun on b8e7557: 0 to apply (same two items: PUBLICATION.md absent, CE source typos), no new French finding; the 18 keys are clean.
- **Not observed in game:** raw keys, fallback text and clipping in English and French stay `unverified` until `playTests`.

## writeTests record (2026-11-11, revision 529bab4)

- **Scenarios (7.a):** `docs/TESTING.md` holds 13 base-game steps, 4 optional integrations and the regression pass. Checked against the English description: the 22 filth types (22 distinct `Filth_*` defNames in `Mod/Patches/Filth.xml`), the own mould and slime thoughts, the Firefoam and Explosion thoughts wired, refinery, tank, stored chemfuel, drugs and neutroamine now each have a step. "RimScent covers 12 of 42 filth types" is a claim about upstream, unchecked. `PUBLICATION.md` does not exist yet (writeDocs).
- **Automated tests (7.b, 7.c, 7.e):** no unit-test project, because the mod is XML only with no C#. Harness: `Tests/Check-Mod.ps1` (dependencies, loadAfter and LoadFolders gates; validated in `scripts/LOCAL_SCRIPTS.md`), run 2026-11-11: PASS. Shared checks run 2026-11-11: `Check-ModBasics` PASS (21 XML files), `Check-Translations` PASS, `Check-DefInjected` 18 keys 0 errors.
- **Tested revision (7.f):** 529bab4 for the static checks above. No game run has happened.
- **Pickle (7.d):** written 2026-11-11 under `Tests/Pickle/` (features 01 to 04, two maps), passes declared in `docs/TESTING.md`; not executed. Uses only existing ColonistRace steps; the missing power step is asked from NPT.
