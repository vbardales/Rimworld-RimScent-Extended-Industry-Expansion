---
settings_audit: not_applicable
localization: partial
translation_en: complete
translation_fr: partial
mod:          RimScent Extended: Industry Expansion (unofficial)
packageId:    nelim.rimscent.extended.industry
repo:         Rimworld-RimScent-Extended-Industry-Expansion
visibility:   public
detached:     yes
stage:        options
licence:      silent
licence_at:   Medieval Overhaul declares no licence
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: French CE DefInjected target could not be resolved because Combat Extended is not available in this audit scope
  - unverified: no automated/XML-result or functional/Pickle scenario artefacts exist for the preTest-to-done gate
  - unverified: never seen running, including hard/optional dependency loading, effects, logs, English/French display, and save behaviour
session:      audit:      2026-09-22, static evidence only
updated:      2026-09-22, evidence-based audit
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
