# Protocols read

Read on 2026-09-26 from `RimScentExtendedIndustryExpansion` at local revision
`a129858f5d890d53d172cd7f0e7409c299f0b3f0`.  `SHA-256` below is the first
12 hexadecimal characters of the file content hash read on that date.  It is
the version reference for documents whose owning repository revision is not
available from this checkout.

`use` means the document affected the present `preTest` work.  `conditional`
means it was read but does not need rereading unless the named operation is
started.  `not used` means it did not affect the current work; keep this row
so a later change alone does not trigger an unnecessary reread.

| Document | Version read | Disposition | Why / reread only for |
| --- | --- | --- | --- |
| `AGENTS.md` | absent at read time | absent | No local file existed. |
| `../AUDIT.md` | SHA-256 `D5DC23B06E35` | use | Stage rules and the absolute prohibition on direct RimWorld launches. |
| `../MOD_SETTINGS.md` | SHA-256 `404916BC99A7` | use | Confirms the justified no-settings audit and its evidence standard. |
| `../PUBLISHING.md` | SHA-256 `7D34F55D583D` | use | Governs public metadata and eventual release requirements. |
| `../TRANSLATIONS.md` | SHA-256 `298F74D226DA` | use | Governs DefInjected English/French coverage. |
| `../STYLE_RIMWORLD.md` | SHA-256 `DE13CBE5E1F9` | conditional | Reread for a new or changed ModIcon/Preview only. |
| `../WORKSHOP_COMMENTS.md` | SHA-256 `6C69A05BB424` | not used | Reread before drafting or posting a Workshop comment. |
| `../scripts/SEARCHING.md` | SHA-256 `9DBD52B2BCD4` | not used | Reread before a full corpus/assembly search; no such search is pending. |
| `../PickleTools/README.md` | SHA-256 `628350C7BCC3` | use | Identifies the shared Pickle tooling and suite layout. |
| `../PickleTools/Headless/README.md` | SHA-256 `488A0BB2CA83` | use | A run is submitted through the dispatcher; it is never launched directly. |
| `../PickleTools/docs/steps.md` | SHA-256 `0F897B4557A9` | not used | Reread while authoring a Gherkin scenario; no local Pickle suite exists yet. |
| `../Rimworld-Release-Admin/docs/OPERATIONS.md` | SHA-256 `F6F85474F6D3` | conditional | Reread before a release workflow, dry-run, or publication. |
| `../Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | SHA-256 `135D16D524E8` | use | Defines ticket ownership, frozen SHA and no-watcher rule. |
| `../Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | SHA-256 `90B7385B1BDA` | use | Defines the only submission route and evidence handling for a run. |
| `STATUS.md` | commit `a129858`; SHA-256 `97F9E94BC09F` | use | Current stage and recorded static evidence. |
| `README.md` | commit `d1210d9`; SHA-256 `D5A30F2E352F` | use | Public-facing scope and compatibility statement. |
| `CHANGELOG.md` | commit `d1210d9`; SHA-256 `82CFDCF9A311` | conditional | Reread for the next release/change-note entry. |
| `ATTRIBUTION.md` | commit `b47485e`; SHA-256 `1C438CD5E91B` | use | Rights and attribution boundary. |
| `LICENSE` | commit `b47485e`; SHA-256 `B054D95F9B2C` | use | MIT scope for this repository's own work. |
| `PUBLICATION.md` | absent at read time | absent | Required before a CI/publication workflow; not present locally. |
| `TESTING.md` | absent at read time | absent | No local file existed. |
| `BACKLOG.md` | absent at read time | absent | The mod-local file did not exist; the monorepo backlog was deliberately not read. |
| `docs/runs/` | absent at read time | absent | No committed run summaries exist. |
| `Tests/Pickle/` | absent at read time | absent | No local Gherkin suite or Pickle evidence directory exists. |
| `Mod/About/About.xml` | commit `d1210d9`; SHA-256 `5DFDC297C18F` | use | Delivered metadata and declared dependencies. |
| `NOTES.md` | absent at read time | absent | No local file existed. |
| `BUGS.md` | absent at read time | absent | No local file existed. |
| `docs/PROTOCOLS-READ.md` | created by this record | use | This reading/version ledger. |

## Consequences retained

- Do not launch Windows RimWorld, Steam, `RimWorldWin64`, or a direct Pickle
  launcher.  Any future Gherkin execution is a dispatcher submission, one
  pass per ticket, with a frozen working tree and the tested SHA in its label.
- The current repository is documented as `preTest`.  Static checks do not
  establish an in-game pass, translated display, logs, saves, or gameplay.
- `PUBLISHING.md` now defines `PUBLICATION.md` as the canonical source for a
  migrated CI description.  This checkout has no such file, so publication
  preparation remains a future, explicit task rather than an inferred claim.
