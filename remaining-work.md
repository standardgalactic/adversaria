# Adversaria companions: remaining work and plan to finish

Status as of 30 September 2026. Scope: the monograph (114 pp) and 25 companion pieces in `companions/` (approximately 227 pp in total). This document is both a repair ledger and a release plan. A checked box means that the named artifact, proof, source record or compile log exists, not merely that someone remembers completing the work.

## 1. Where things stand

All 25 pieces have a first draft that compiles. Pieces 01 to 07 were written and read one at a time. Pieces 08 to 25 were drafted in parallel and have had only mechanical checks (compile, page count, no em dashes, no "witness", no named systems, no undefined references). No piece has a literature review. Each carries the line "Related work is deliberately not surveyed in this draft." and `% TODO(literature)` comments marking where the review goes.

| # | Piece | Pp | Kind | Main gap |
|---|---|---|---|---|
| 01 | The Unit of Knowledge | 8 | essay | review, literature |
| 02 | Routing Is Not Adjudication | 7 | essay | literature |
| 03 | Standing Without Scores | 8 | essay | literature |
| 04 | Null Results as Claims | 7 | essay | literature (equivalence testing, registered reports) |
| 05 | A Contested Effect | 7 | essay | literature; failed-replication step is new relative to Ch. 20 |
| 06 | Three Pages and One Name | 6 | schematic essay | none beyond literature |
| 07 | Signed Identifications and the Obstruction Region | 13 | paper | unread sources, argumentation search, term decision |
| 08 | No Scalar, No Problem | 10 | paper | literature; Ch. 12 issues |
| 09 | Replay and Anchors | 16 | paper | literature; well-foundedness of anchors |
| 10 | Disagreement Has Four Causes | 10 | essay | literature; flowchart test is an operationalization |
| 11 | Inscription and Authority | 11 | paper | literature; Ch. 16 gaps |
| 12 | One Claim, Five Encyclopedias | 8 | essay | literature; any real comparison needs research |
| 13 | Mapping Two Ontologies | 9 | paper | literature; two checks |
| 14 | Labeling Semantics Compared | 12 | paper | literature (largest); standard facts need attribution |
| 15 | A Categorical Reading of Scope and Warrant | 8 | paper | literature; relation to Ch. 8 class |
| 16 | Information on Argument Graphs | 9 | paper | literature; deliberately late, intervention-relative |
| 17 | A Figure Across Three Traditions | 6 | protocol | the research itself has not begun |
| 18 | Dialogue on the Unit | 10 | dialogue | literature (light) |
| 19 | Reader's Guide to a Claim Page | 8 | guide | usability literature; routine untested |
| 20 | Adversaria in Forty Frames | 10 | comic script | art, lettering, layout |
| 21 | A Programmed Text on Argued Claims | 10 | programmed text | trial with real readers |
| 22 | The Consensus Engine | 8 | essay | literature |
| 23 | Reversibility and Standing | 9 | essay | literature |
| 24 | Transport and Gluing | 9 | paper | three conventions; cross-references |
| 25 | Ledger and Recoverable Distinction | 8 | paper | one check; cross-reference to existing work |

## 2. Workstreams

### 0. Preserve the drafting trace (immediate, before all other work)

Goal: ensure that none of the computational checks or drafting decisions depends on an expiring session.

1. Copy every script still used by a paper from temporary scratch paths into `notes/scripts/`.
2. Add `notes/scripts/README.md`. For each script, record the paper and proposition it checks, required interpreter and packages, command to run, expected output, random seed where applicable, and whether the script is an exhaustive check, bounded enumeration, randomized test or illustrative computation.
3. Preserve the common drafting brief, the final status report from the parallel run and this plan under `notes/`.
4. Record SHA-256 hashes for the 25 first-draft TeX files and their PDFs. These hashes identify the baseline against which later literature and repair edits are compared.
5. Unpack the sources archive in a clean temporary directory and confirm that it contains the monograph source, all 25 companion sources, notes required to understand them and no session-only absolute paths.

Output: a durable baseline from which every later change can be reconstructed.

### A. Verification pass on 08 to 25 (first, cheap, no literature)

Goal: make every formal statement trustworthy before anyone builds on it.

1. Read each piece once against the cited chapters. Priority order: 09, 14, 08, 11, 24, 13, 25, then the rest.
2. Resolve the checks listed in section 3.
3. Re-run every computed example from the preserved copies in `notes/scripts/`. Do not cite a temporary scratchpad execution as the final verification record.
4. Produce one consistency sweep across the series: same symbols, same names for the same things, same chapter references.
5. For every theorem, proposition, lemma and corollary in pieces 08 to 25, assign one verification status: `proved-here`, `proved-in-monograph`, `standard-source-needed`, `computed-example-only`, `design-claim`, or `open`.
6. Treat counterexamples and failed checks as results. Do not repair prose silently: enter the issue in the formal issue ledger, identify downstream pieces and then revise the common source definition or theorem.

### B. Monograph fixes that the companions exposed

Decide and apply in one editing round, then recompile the monograph and re-run the companion compile:

- Chapter 12: strengthen the hypothesis of part (b) of the indexed-status proposition; add the constancy requirement on views to the "monotone views disagree only on incomparable pairs" statement; replace the "observational" rung in the worked incomparability example with one from the Chapter 6 ladder.
- Chapter 16: clarify ledger-time property (d) (the references field can delay ledger time); state the dependence of the authorization projection on ledger time in planes proposition (a); add kind labels to the ten-invariants table; say who may issue revocations and capabilities, or say explicitly that it is left to policy.
- Chapter 14: state that closure gives containment of certified labels, not equality, if that is the intended claim.
- Chapter 9: decide what happens to an argument whose filler is the losing duplicate.
- Chapter 15: state the grain of the derived kernels EQ and IMP and whether EQ(k_i,k_j) and EQ(k_j,k_i) are one kernel (this settles conventions C1 to C3 in piece 24 and the grain check in 13).
- Chapters 8 and 19: wording on the negative-edge reading of signed identifications (Z/2 "opposite value" versus identity semantics with weak balance).
- Chapter 18: state the scalar rule explicitly among the commitments, or change 20 to say the three-rule constitution is a paraphrase.
- Verify well-foundedness of an anchor that commits to a prefix containing itself (Chapter 16, used in 09).

### C. Decisions only the author can make

1. Keep "obstruction region", or rename to "inconsistency region" or "frustration region". No conflicting established use has yet been identified in the limited search. The terminology decision remains open through literature batch D2; the heavy use of "obstruction" in contextuality may support rather than defeat the present name.
2. Keep the NP-completeness proposition in 07 only if the membership argument and clause-gadget reduction survive formal review. The implementation was tested on 400 random formulas, which tests the implementation and sampled instances but does not verify NP-completeness.
3. Piece 25: whether "recoverable distinction" as defined narrowly there is acceptable next to the existing usage in the corpus.
4. Piece 17: whether to run the research at all, and on which figure. It is a protocol, and no real figure is named.
5. Pieces 20 and 21: whether to commission or produce the art and test with readers, or keep them as scripts.
6. Whether any pieces should be merged for submission (for example 14 and 15, or 10 and 12).

### D. Literature review (deferred, the largest workstream)

Do it in batches by topic, because one search serves several pieces. For each batch: read primary sources, fill a matrix (source, verification level, relation), write a short novelty ledger, then extend the pieces.

| Batch | Topic | Pieces | What to cover |
|---|---|---|---|
| D1 | Structured argumentation, labellings, dynamics, enforcement, sensitivity | 14, 16, 08, 07 (claim 4) | original sources for complete, preferred, stable labellings; source and convergence proof of the sum-ranking; influence and robustness measures; belief revision in argumentation |
| D2 | Signed graphs, parity constraints, sheaves and contextuality | 07, 15, 24 | unread items: Papaleo et al. (EKAW 2014), Meilicke et al. (AAAI 2007), Zaslavsky's bibliography, two dynamic signed-network papers, Honeyman et al. 1980, Abramsky–Mansfield–Barbosa 2011 (citation only so far), Cartwright–Harary page numbers, Harary's year |
| D3 | Ontology alignment, mapping repair, entity resolution | 13, 24, 07 | alignment repair, mapping composition, identity reconciliation |
| D4 | Order theory and scalarization | 08, 23 | utility representation, Pareto and scalarization, incomplete comparisons in social choice |
| D5 | Logs, timestamping, replication, authority | 09, 11, 25 | transparency logs, Merkle commitments, convergent replication, capability revocation, event sourcing, retraction |
| D6 | Reference works, dispute taxonomies, moderation | 10, 11, 12, 22 | dispute taxonomies, neutrality and false balance, regional editions, commons governance |
| D7 | Method and humanities practice | 04, 17 | equivalence testing, registered reports; variant recording, translation studies, pre-registration in humanities |
| D8 | Pedagogy, comics, usability | 19, 20, 21 | reading of uncertainty displays, programmed instruction, comics as explanation |
| D9 | Cross-references inside the corpus | 24, 25 | existing essays on epistemic transport, gluing and recoverable distinction (link, do not restate) |

Rule carried over: nothing is characterised from memory; a source is marked [read], [abstract], [title] or [memory] in the matrix, and only [read] sources support claims in the text.

Each literature-matrix row must contain: complete citation; persistent identifier; access date; verification level; exact pages, theorem or section read; claim in the companion that it bears on; relation (`precedent`, `supports`, `constrains`, `contradicts`, `terminology`, `method` or `illustration`); whether the source changes a novelty claim; and a quotation or paraphrase note short enough to audit without rereading the entire source. Abstract-only and title-only records may route later reading, but they do not enter prose as evidence.

Each batch ends with a novelty ledger. The ledger separates: mathematics already known; a new proof or strengthening, if any; a new interpretation of known mathematics; a new integration into the public-claim-graph architecture; and a design choice rather than a discovery. If priority remains uncertain, the text says so.

### E. Finishing and release

1. Replace the "not surveyed" line in each piece as its batch completes; keep the "What this essay does not show" section.
2. Add a bibliography to each piece (BibTeX file per batch, shared).
3. Final compile, zero undefined references, zero overfull boxes, zero em dashes, no "witness", no "critique" or question titles.
4. Rebuild the sources archive, publish in the frozen sequence (1 to 9 first, then the rest).
5. Produce a release manifest containing title, version, page count, source hash, PDF hash, literature-batch completion, verification status and known limitations for every piece.
6. Tag the monograph version against which the companions were checked. A companion may cite a chapter number only together with a monograph version in its release metadata.

### F. Corpus synthesis pass

Goal: make the 25 pieces a differentiated series rather than 25 locally coherent restatements of the monograph.

1. Write a one-sentence principal claim for every piece without copying its abstract.
2. Build a claim-overlap table. For each pair with substantial overlap, record whether the relation is dependency, specialization, alternative register, worked instantiation, genuine duplication or tension.
3. Give every piece one irreducible burden: the claim, proof, protocol, example or reader transformation that would disappear if the piece were removed.
4. Check introductions against conclusions. Every promised result must appear; every concluding claim must be supported by the body; every limitation must remain visible after the literature pass.
5. Check the series against the monograph in both directions. Companions may clarify, operationalize or extend the monograph, but must label those acts. The monograph must not be retrospectively credited with propositions first introduced in a companion.
6. Preserve productive tensions. When two pieces adopt different scopes, conventions or policies, state the difference instead of homogenizing them merely for verbal consistency.
7. Decide whether any piece is better treated as a view, teaching register or protocol rather than an independent research contribution. This classification affects release framing, not whether the artifact is retained.

Output: a series-level synthesis note and a final dependency table.

### G. Empirical and presentation work (separate track)

Pieces 17, 19, 20 and 21 require work that cannot be completed by textual polishing alone. Piece 17 requires a primary-source research plan, language and translation competence appropriate to the selected figure, and an explicit rule for turning prose into signed identifications. Piece 19 requires at least a small usability test of whether readers can recover claim, scope, objections and status without coaching. Piece 20 requires art, lettering and page composition after the script stabilizes. Piece 21 requires reader trials that record errors by frame and exercise, not only completion or preference. These pieces may be released as protocols or scripts before their empirical or visual realization, but their status must say which object is being released.

## 3. Open checks, by piece

- 08: constancy requirement on views; "associational" versus "observational" rung.
- 09: anchor well-foundedness; classification of invariants is an interpretation.
- 10: scope-mismatch flowchart test is an operationalization.
- 11: revocation and capability issuers left to policy; classification of invariants.
- 13: modality remark (W2 and rung none) derived from the definitions, confirm intended; grain of EQ and IMP.
- 14: certified labels give containment only; standard facts on admissible sets need attribution.
- 15: whether the class used for signed cases coincides with the Chapter 8 contextuality class.
- 20: three-rule constitution is the author's wording.
- 23: "reversibility" is used only in the monograph's sense.
- 24: conventions C1 to C3.
- 25: duplicate rule and malformed arguments; narrow definition of recoverable distinction.

## 4. Sequence and effort

1. **Immediate preservation.** Workstream 0. Do not begin substantive editing until the scripts and baseline hashes are durable.
2. **Week 1.** Workstream A on 09, 14, 08, 11, 24, 13, 25; decisions C1 to C3; create the formal issue ledger. Output: confirmed defects, rejected suspicions and exact proposed fixes.
3. **Week 2.** Workstream B (one monograph edit round), recompile everything, propagate changes into affected companions, then complete A for the remaining pieces.
4. **Weeks 3 to 6.** Literature batches D1 and D2 first, because they determine the novelty claims in 07, 14, 15, 16 and 24; then D3, D4 and D5.
5. **Weeks 7 to 9.** D6 to D9; extend pieces; add bibliographies; run the corpus synthesis pass F.
6. **Week 10.** Release pass E. Pieces 17 and 19 to 21 retain separate protocol, empirical or production statuses under G.

Stopping points that leave a usable state: after week 2 (clean drafts, sound formal claims); after D1 and D2 (the technical papers carry honest novelty statements); after week 10 (full series).

The week labels express dependency and approximate effort, not deadlines. A literature batch that changes a definition or theorem suspends downstream polishing until the affected formal issue is resolved.

## 5. Formal issue ledger

Maintain `notes/formal-issues.md` with one record per issue. Each record contains:

- a stable identifier such as `ADV-CH12-001`;
- source location in the monograph and every affected companion;
- the exact present claim;
- issue type (`false`, `under-specified`, `ambiguous`, `unproved`, `terminology`, `cross-reference`, `implementation`, or `policy choice`);
- smallest counterexample or reason for concern;
- proposed repair;
- downstream files requiring propagation;
- verification method;
- disposition (`open`, `confirmed`, `rejected`, `fixed`, or `deferred`);
- commit or version in which the disposition occurred.

The first ledger records should cover the Chapter 12 hypotheses and ladder rung, Chapter 16 ledger time and authority issues, Chapter 14 containment/equality distinction, Chapter 9 duplicate aliases, Chapter 15 EQ/IMP grain, negative-edge semantics, anchor well-foundedness and the Chapter 18 scalar commitment.

No issue is closed merely because revised wording compiles. A formal issue closes only after the proof, counterexample, definition or design boundary has been checked and its downstream uses have been searched.

## 6. Definitions of done

### A companion draft is internally verified when

- every formal statement has a verification status;
- every monograph dependency names the correct chapter, definition or result in the tagged monograph version;
- every computed example is reproducible from a preserved script or is explicitly labelled hand-worked;
- every interpretive extension is labelled as an extension;
- its `What this essay does not show` section remains accurate;
- it compiles with no undefined references or overfull boxes and passes the series style checks.

### A literature batch is complete when

- the search strategy and date range are recorded;
- primary or authoritative sources have been read for the central claims;
- source verification levels and page-level notes are present;
- the novelty ledger has been written;
- every affected companion has been updated or explicitly left unchanged with a reason;
- no `[abstract]`, `[title]` or `[memory]` item is used as textual support.

### The series is release-ready when

- the formal issue ledger has no unresolved issue capable of changing a theorem statement or core design guarantee;
- every piece has a distinct principal burden;
- terminology and notation are consistent or differences are declared;
- the monograph and companions compile from a clean environment;
- the release manifest, source archive and hashes agree;
- limitations distinguish proofs, computations, interpretations, protocols, schematic examples and empirical findings.

## 7. Risk register

### Conceptual inertia

The provisional drafts may recruit later literature as decoration rather than allowing sources to change the argument. Mitigation: write the novelty ledger before revising the prose and record every source that requires a definition, theorem or scope change.

### Parallel-draft divergence

Workers may have used one term for different objects or different terms for one object. Mitigation: the synthesis pass compares principal claims and dependencies, not merely repeated words.

### Monograph drift

Repairing the monograph may invalidate page references, proofs and examples across many companions. Mitigation: make one consolidated formal edit round, tag it, then propagate from the issue ledger rather than through memory.

### Computational overclaim

Random testing, bounded enumeration and successful examples may be described as proof. Mitigation: every script declares its evidential role, and theorem status depends on a proof or cited theorem, not a test count.

### Citation laundering

A remembered or abstract-level characterization may become a confident claim after passing through several drafts. Mitigation: only `[read]` records support prose, and companions cite the primary source wherever practical.

### Terminological annexation

A local technical definition, especially `recoverable distinction`, may silently narrow a term used more broadly elsewhere in the corpus. Mitigation: compare against existing usage and rename the local object when the broader concept should remain open.

### Premature unification

The synthesis pass may erase useful disagreement to make the series look seamless. Mitigation: prefer explicit scope, convention or policy distinctions over forced agreement.

## 8. Decision records

Authorial decisions in Workstream C should be recorded in `notes/decisions/` as short numbered files. Each states the options considered, selected option, reason, affected pieces and whether the choice is reversible. At minimum, create records for terminology of the obstruction region, NP-completeness inclusion, recoverable-distinction terminology, the scope of piece 17, production status of pieces 20 and 21, and any mergers.

These records do not claim that the chosen option is uniquely correct. They prevent a later draft from presenting a contingent editorial choice as though it followed from the formalism.

## 9. What this plan does not include

No new pieces beyond the 25. No change to the frozen publication sequence. No empirical work for 17, 19 or 21 beyond what is described above.

The plan also does not assume that every first draft must become a separately submitted paper. It preserves every artifact while allowing later classification as paper, essay, case study, protocol, guide, dialogue, comic script, programmed text or supporting note. Nor does it require the series to conceal unresolved disagreement. A documented obstruction, failed proof, null result or decision to leave two formulations incomparable is an admissible completion state.
