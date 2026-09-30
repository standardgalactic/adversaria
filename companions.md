# Companion papers and essays for Adversaria

Planning file, 30 September 2026. Every entry carries the same twelve fields. Chapter numbers refer to the monograph (Ch. 1 unit; 2 traces; 3 predecessors; 4 claim; 5 evidence; 6 warrants and arguments; 7 objections and defeat; 8 distinction, dependency and gluing; 9 ledger; 10 relation algebra; 11 constraint; 12 status vector; 13 routing; 14 pipeline; 15 ontologies; 16 gates; 17 imports and negative results; 18 federation; 19 to 20 cases).

## House rules for the series

- The monograph stays the single source of definitions and proofs. A companion restates only what it needs and cites the chapter and label; it never introduces a semantic rule the monograph lacks. A new result goes into the monograph first or is marked as an extension.
- Keep the three-way split: theorem (structural guarantee), definition or design rule (choice), counterexample or design argument (why the choice). No epistemic-quality claim is ever stated as a theorem.
- The H1 caution carries over: general gluing problem, then the signed Z/2 theorem, then H1 as interpretation of that case only, then wider machinery as extension.
- Schematic cases stay schematic. A schematic example may not use a real name, scripture, tradition or page as if it were data. Anything about a real case is a separate piece with its own research step.
- Style: avoid em dashes; no first-person autobiographical framing; titles avoid "witness", avoid the "X Before Y" pattern, avoid "critique", and are never questions.
- Naming other systems: the monograph's main text names none. Companions default to the same rule. Exception to decide per piece: No. 12 needs named comparators, and then each comparator is described from primary documentation, not memory.
- Every piece ends by stating what it does not show.

## Publication sequence (frozen)

1. The Unit of Knowledge
2. Routing Is Not Adjudication
3. Standing Without Scores
4. Null Results as Claims
5. A Contested Effect
6. Three Pages and One Name
7. Signed Identifications and the Obstruction Region
8. No Scalar, No Problem
9. Replay and Anchors

Rationale: the accessible architectural claim first; then two familiar failure modes (routing, scalar scores) and the sharpest practical demonstration of why negation cannot be inferred from a failed detection; then the two schematic cases; then theorem-forward papers, after readers have seen why the mathematics exists. Pieces 10 to 25 are unsequenced and ordered by track below. No. 16 is deliberately late.

---

# Track A. Architectural essays

## 1. The Unit of Knowledge
- **Title:** The Unit of Knowledge
- **Track:** A, architectural essay
- **Form:** long-form essay, about 6,000 to 8,000 words, prose with two small tables and one worked miniature
- **Thesis:** A public knowledge base must choose a unit, and the unit fixes which failures it can express. Page and statement cannot localize a conflict or show what would make a claim fail; an argued proposition (claim, scope, grounds, warrant, objections, status) can, and pages and lookup tables can be produced from it as presentations.
- **Source chapters:** 1, 4, 7, 9, 12 (the stored/computed split; the three layers)
- **Required definitions:** claim as tuple (kernel, scope, modality, provenance, version); scope as region; argument; the three layers (ledger, argument graph, presentation)
- **Principal result or example:** the comparison of three units (page, statement, argued proposition) on five questions; a family of pages that disagree with no page wrong by its own standard; one miniature with two boxes of scope showing a surviving remainder that is not a box
- **Dependencies:** none (entry point). Sets vocabulary for 2 to 4
- **New research required:** none for the argument; light scan of how existing systems represent qualifiers, only if the essay names them (default: it does not)
- **What it must not claim:** that pages or statement stores are wrong for every purpose; that the model determines truth; that the gluing failure occurs in any named real encyclopedia
- **Likely venue or audience:** general intellectual readership and technically literate editors; the public front door to the series
- **Status:** first draft complete (8 pp), companions/01-unit-of-knowledge.tex; awaiting author review

## 2. Routing Is Not Adjudication
- **Title:** Routing Is Not Adjudication
- **Track:** A, architectural essay (failure mode)
- **Form:** essay, 4,000 to 6,000 words, one extended worked failure
- **Thesis:** Deciding what to show a person is a different operation from deciding what stands. A view that routes a subset of arguments can make a non-IN argument look IN, so standing must be computed on the full active set and a view must say when it is not closure-complete.
- **Source chapters:** 13, 7, 12
- **Required definitions:** active set; routed view; local evaluation on a view; closure-complete marker
- **Principal result or example:** Prop. localview (any non-IN argument can look IN on some view); Prop. oneway (routing depends on evaluation, never the reverse); Design rule statusfull
- **Dependencies:** 1
- **New research required:** none for the argument; a constructed example, not a real platform
- **What it must not claim:** that any deployed system fails this way; that routing is undesirable (attention is scarce, so routing is needed)
- **Likely venue or audience:** platform designers, moderators, information-retrieval readers
- **Status:** first draft complete (7 pp), companions/02-routing-is-not-adjudication.tex; awaiting author review

## 3. Standing Without Scores
- **Title:** Standing Without Scores
- **Track:** A, architectural essay (failure mode)
- **Form:** essay, 4,500 to 6,500 words, anchored by the dud and gradient cubes
- **Thesis:** Collapsing the status vector to one number reintroduces the failure the system exists to avoid: a scalar cannot represent the dominance order, weights are a hidden policy, and a scoreboard becomes a target. The design answer is declared, versioned views over a vector.
- **Source chapters:** 12 (especially 12b), 16, 17
- **Required definitions:** status vector (E, R, C, G, A, U); dominance preorder; frontier; policy-indexed status; declared view
- **Principal result or example:** Thm. noscalar stated informally with the height-function idea; Prop. weights; Cex. nonconvex; Rule views; the competition cubes in Ch. 12
- **Dependencies:** 1; conceptual bridge to 4 and 8
- **New research required:** none. If a real competition is cited, verify from its published rules
- **What it must not claim:** that vectors cannot be gamed (they can, at lower leverage, and the essay says where); that ties are impossible under a scalar (ties may occur)
- **Likely venue or audience:** metrics and evaluation researchers, editors, governance readers
- **Status:** first draft complete (8 pp), companions/03-standing-without-scores.tex; awaiting author review

## 4. Null Results as Claims
- **Title:** Null Results as Claims
- **Track:** A, architectural essay (practical demonstration)
- **Form:** essay with a compact taxonomy table and three short constructed scenarios, 4,500 to 6,000 words
- **Thesis:** Claim negation cannot be inferred from a failed detection. A null outcome splits into null detection, bounded effect, opposite effect and failed replication, each supporting different claims over different scopes, and the system must store each as what it is.
- **Source chapters:** 17, 4 (negation of a kernel), 5, 6, 7
- **Required definitions:** kernel negation; bounded effect; declared replication attempt; negative-outcome taxonomy
- **Principal result or example:** Prop. negsupport (what each negative outcome can support); Prop. nopositivity (evaluation is symmetric under exchange of a kernel and its negation, so the system has no built-in preference for positive claims)
- **Dependencies:** 3 (placed directly after it), 1
- **New research required:** none for the logic; if a real replication failure is used as illustration, primary-source check of its design and reported intervals
- **What it must not claim:** that null results are unimportant or always informative; that publication bias is solved; that power analysis is unnecessary
- **Likely venue or audience:** methodologists, replication and meta-research readers, journal editors
- **Status:** first draft complete (7 pp), companions/04-null-results-as-claims.tex; awaiting author review

# Track B. Cases

## 5. A Contested Effect
- **Title:** A Contested Effect
- **Track:** B, case study (schematic)
- **Form:** case study with full labeling tables, 5,000 to 7,000 words
- **Thesis:** A dispute about an effect can be separated into scope, equivalence of measurement and policy preference, and the labels change in a computable way as each is resolved.
- **Source chapters:** 20, 6, 7, 10, 11, 12
- **Required definitions:** unit space of four cells; equivalence trial claim; preference declaration; labeling per unit
- **Principal result or example:** the verified labels: undercutter alone gives argument a3 and p OUT; no preference gives all UND; preference u below r gives r, a3, p IN and u OUT. Extension: add a replication dispute and show the status vector before and after
- **Dependencies:** 1, 4
- **New research required:** none while schematic; a real instantiation would need a separate piece
- **What it must not claim:** that any real trial or effect is described; which side is right
- **Likely venue or audience:** methodologists, applied statisticians
- **Status:** first draft complete (7 pp), companions/05-a-contested-effect.tex; failed-replication step is new relative to Ch. 20; awaiting author review

## 6. Three Pages and One Name
- **Title:** Three Pages and One Name
- **Track:** B, case study (schematic only)
- **Form:** case study, 5,000 to 7,000 words
- **Thesis:** Identification claims that are pairwise satisfiable can be jointly unsatisfiable, and the obstruction is a scope that can be reported without editing any page.
- **Source chapters:** 19, 8
- **Required definitions:** signed identification; active edges at a unit; sign product; obstruction region; pooling declaration
- **Principal result or example:** Ob = {a3} x S; three repairs (an undercutter, a pooling declaration, nothing done); Cex. triangle with regions
- **Dependencies:** 1; read before 7
- **New research required:** none. The schematic uses placeholder pages and aspects only
- **What it must not claim:** anything about any actual page, scripture, tradition or language edition. It must not import names, verses or translations from a real case, even as flavour
- **Likely venue or audience:** general readers and editors, then as the intuition for 7
- **Status:** first draft complete (6 pp), companions/06-three-pages-and-one-name.tex; placeholders only; awaiting author review

## 17. A Figure Across Three Traditions (real-case instantiation; separate from 6)
- **Title:** working title, A Figure Across Three Traditions
- **Track:** B, case study (empirical, research-gated)
- **Form:** research report with an appendix of instantiated claims, length set by findings
- **Thesis:** Whether the gluing analysis finds a real obstruction depends on what the actual pages and sources assert, which can only be settled from primary sources and translations.
- **Source chapters:** 19, 8, 5 (evidence kinds), 15 (mappings)
- **Required definitions:** as in 6, plus an ontology version and operational meanings for each term used
- **Principal result or example:** none in advance. Either an obstruction region with its witnessing cycle, or a documented finding that none exists or that a distinction dissolves it
- **Dependencies:** 6, 7, 13
- **New research required:** substantial and explicit: choose the figure and pages; read the primary texts in original languages or vetted editions; record translation choices as evidence with their own warrants; capture each page's statement with its revision; then build the graph. Do not begin instantiation before this step is done
- **What it must not claim:** a theological or historical verdict; that any tradition is mistaken; conclusions beyond what the recorded evidence supports
- **Likely venue or audience:** comparative-religion and digital-humanities readers; editors of multilingual encyclopedias
- **Status:** first draft complete (6 pp), companions/17-a-figure-across-three-traditions-protocol.tex; protocol only, no real figure named; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 12. One Claim, Five Encyclopedias
- **Title:** One Claim, Five Encyclopedias
- **Track:** B, comparison
- **Form:** side-by-side exhibit with short commentary
- **Thesis:** A single contested proposition, written up as five articles, hides its scope and objections differently in each; as scoped claims in a graph the differences become visible and computable.
- **Source chapters:** 1, 3, 4, 7, 12
- **Required definitions:** claim; scope; objection; status vector
- **Principal result or example:** one constructed proposition rendered as five invented article excerpts, then as claims
- **Dependencies:** 1, 2
- **New research required:** none if the five articles are invented. If real encyclopedias are compared, describe each from its own documentation and cite it
- **What it must not claim:** that any named encyclopedia behaves as the invented ones do
- **Likely venue or audience:** general readers
- **Status:** first draft complete (8 pp), companions/12-one-claim-five-encyclopedias.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 13. Mapping Two Ontologies
- **Title:** Mapping Two Ontologies
- **Track:** B, technical case
- **Form:** worked technical case, 4,000 to 6,000 words
- **Thesis:** Transport of a claim across an ontology mapping is sound, and exactly as defeasible as the mapping claim it rests on.
- **Source chapters:** 15, 4 (kernel, ontology version), 7
- **Required definitions:** mapping claim (EQ, IMP); transport warrant (TR_EQ, TR_IMP); ontology version
- **Principal result or example:** Thm. transport; Thm. transportdefeat; Cor. chainmap, with a chain of two mappings and a defeated middle link
- **Dependencies:** 1; 24 builds on it
- **New research required:** none while both ontologies are invented; real ontologies need a separate check of their published definitions
- **What it must not claim:** that any mapping is correct; that a universal ontology is possible or needed
- **Likely venue or audience:** ontology and data-integration practitioners
- **Status:** first draft complete (9 pp), companions/13-mapping-two-ontologies.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

# Track C. Formal papers

## 7. Signed Identifications and the Obstruction Region
- **Title:** Signed Identifications and the Obstruction Region
- **Track:** C, formal paper
- **Form:** mathematics paper, 12 to 18 pages, full proofs
- **Thesis:** For families of pages joined by signed binary identifications over regions, a joint description exists on a unit exactly when no negative cycle is active there, and the set of units where none exists is itself a scope. The H1 form is an interpretation of this Z/2 case only.
- **Source chapters:** 8 (Def. gluing, Prop. single, Thm. signed, Def. obstruction, Thm. obs, Prop. h1, Prop. dissolve) and Cex. triangle. Not Ch. 10, which is the relation algebra
- **Required definitions:** pages and gluing; signed graph per unit; balance; obstruction region; pooling declaration
- **Principal result or example:** Thm. signed and Thm. obs restated with proofs; a section on what fails beyond the signed case (pairwise-compatible local sections that do not glue for structures not reducible to signed binary identifications) stated as an open problem, not a result
- **Dependencies:** 6; 1
- **New research required:** a literature check on signed-graph balance (Harary, Zaslavsky) and on sheaf gluing to position the result honestly; decide whether any wider theorem is provable before claiming it
- **What it must not claim:** that vanishing H1 guarantees global sections in general; novelty beyond a regional, scoped version of a classical criterion unless the literature check supports it
- **Likely venue or audience:** applied mathematics and knowledge-representation venues
- **Status:** first draft complete (13 pp), companions/07-signed-identifications.tex; literature matrix and novelty ledger in notes/signed-identifications-literature.md; several sources unread (see that file); awaiting author review

## 8. No Scalar, No Problem
- **Title:** No Scalar, No Problem
- **Track:** C, formal paper
- **Form:** short theory note, 8 to 12 pages
- **Thesis:** The dominance preorder on status vectors has no monotone scalar representation in general; the right object is the frontier, and policy-indexed status makes the dependence on declared preference explicit.
- **Source chapters:** 12 (12a definitions, 12b results)
- **Required definitions:** status vector; dominance preorder (A excluded); monotone scalar; representation; frontier; policy-indexed status
- **Principal result or example:** Thm. noscalar with the height-function argument and the linear-extension construction; Prop. pareto; Cex. nonconvex; Prop. weights
- **Dependencies:** 3
- **New research required:** literature check on order embeddings and utility representation (Debreu, Birkhoff) to state precisely what is classical and what is specific
- **What it must not claim:** that scalar summaries are useless for every purpose; that a frontier is a ranking
- **Likely venue or audience:** decision theory, social choice, mechanism design readers
- **Status:** first draft complete (10 pp), companions/08-no-scalar-no-problem.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 9. Replay and Anchors
- **Title:** Replay and Anchors
- **Track:** C, protocol paper
- **Form:** systems paper with security arguments, 14 to 20 pages
- **Thesis:** Ledger time derived from anchor chains makes replay deterministic and keeps time out of any contributor's control; closure certificates against an anchor commitment make completeness checkable; capture resistance comes from separating authorization from argument.
- **Source chapters:** 9, 14, 16 (Prop. ledgertime, prefix, planes, revoke, reasondet, capture table), 18
- **Required definitions:** anchor; effective interval (half-open); authorization plane and argument plane; capability and revocation; proof object; closure certificate
- **Principal result or example:** Thm. replay; Prop. ledgertime; Prop. planes; the ten anti-capture invariants as a table
- **Dependencies:** 2, 11
- **New research required:** survey of trusted timestamping and transparency-log designs for related work; threat model written out
- **What it must not claim:** that the anchoring authority is trustworthy (it must be trusted or audited); that certificates are correct beyond their commitment; that family formation is uncontestable
- **Likely venue or audience:** distributed systems and security readers
- **Status:** first draft complete (16 pp), companions/09-replay-and-anchors.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 14. Labeling Semantics Compared
- **Title:** Labeling Semantics Compared
- **Track:** C, technical report
- **Form:** report with a counterexample catalogue
- **Thesis:** Some guarantees belong to the underlying argument graph and its scoping; others belong to a chosen labeling semantics. A comparison must state which is which, or it will credit one semantics with properties the graph already has.
- **Source chapters:** 7 (especially 7b), 9, 12
- **Required definitions:** argument graph; structural attack; policy-relative defeat; grounded labeling per unit; alternative semantics (preferred, stable, ranking-style) stated explicitly
- **Principal result or example:** a two-column table. Graph properties: well-definedness of regions, non-explosion (Cor. explosion) as a property of how arguments are constructed, scope locality, backward closure. Semantics properties: uniqueness of extension, OUT-inertness, behaviour on odd cycles. A counterexample for each cell marked "fails"
- **Dependencies:** 8 (theory context); 5
- **New research required:** formal statement of each alternative semantics in the monograph's per-unit setting; decide which monograph results transfer verbatim
- **What it must not claim:** that grounded labeling is best; that any property holds for a semantics before it is proved for that semantics
- **Likely venue or audience:** computational argumentation researchers
- **Status:** first draft complete (12 pp), companions/14-labeling-semantics-compared.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 15. A Categorical Reading of Scope and Warrant
- **Title:** A Categorical Reading of Scope and Warrant
- **Track:** C, extension note
- **Form:** short note marked as an extension
- **Thesis:** Restriction, pooling and lift behave like structure maps over the region algebra, and the signed gluing criterion is one instance of a descent condition.
- **Source chapters:** 4, 6, 8, 10
- **Required definitions:** region algebra as a poset or site; claims as a presheaf-like assignment; restriction maps; descent
- **Principal result or example:** a dictionary from monograph notions to categorical ones, with one theorem only if it is fully proved
- **Dependencies:** 7
- **New research required:** real: check that the presheaf structure satisfies the needed axioms; check against the sheaf literature
- **What it must not claim:** universality of any cohomological criterion; that category theory adds predictive content beyond the dictionary
- **Likely venue or audience:** category-theory-minded knowledge-representation readers
- **Status:** first draft complete (8 pp), companions/15-categorical-reading-of-scope-and-warrant.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 16. Information on Argument Graphs (deliberately late)
- **Title:** Information on Argument Graphs
- **Track:** C, exploratory paper
- **Form:** exploratory paper that states its own limits
- **Thesis:** Any measure of how much a graph would change under an added objection must be defined relative to a stated intervention; otherwise it becomes a covert scalar score that reintroduces what No. 3 and No. 8 exclude.
- **Source chapters:** 12, 7, 18
- **Required definitions:** intervention (an added record, with a class); change in status vector under intervention; intervention-relative sensitivity; explicit statement that the result is a vector or a partial order, not a rank
- **Principal result or example:** only results that survive the test: the measure takes an intervention as an argument, is not defined without one, and cannot be aggregated into a single figure without a declared view
- **Dependencies:** 3, 8, 14 (write after them)
- **New research required:** substantial: related work on influence and sensitivity in argumentation frameworks and on information measures; a proof that the proposed measure is not reducible to a scalar that dominance cannot represent
- **What it must not claim:** that there is a total amount of information in a graph; that the measure ranks claims or contributors
- **Likely venue or audience:** argumentation and information-theory readers
- **Status:** first draft complete (9 pp), companions/16-information-on-argument-graphs.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

# Track D. Governance and practice

## 10. Disagreement Has Four Causes
- **Title:** Disagreement Has Four Causes
- **Track:** D, practical guide
- **Form:** guide with a flowchart, 3,000 to 4,500 words
- **Thesis:** Most disagreements reduce to four situations with distinguishable signatures, and naming which one holds tells participants what kind of move would settle it.
- **Source chapters:** 12 (Prop. foursit), 8, 11, 7
- **Required definitions:** the four situations; pooling declaration; methodological attack with statement of T or F
- **Principal result or example:** Prop. foursit; one short example per situation
- **Dependencies:** 1, 5
- **New research required:** none
- **What it must not claim:** that the four cases are exhaustive of all human disagreement; that a diagnosis resolves the dispute
- **Likely venue or audience:** editors, moderators, working scientists
- **Status:** first draft complete (10 pp), companions/10-disagreement-has-four-causes.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 11. Inscription and Authority
- **Title:** Inscription and Authority (replaces "Who May Inscribe")
- **Track:** D, governance essay
- **Form:** essay, 4,500 to 6,500 words
- **Thesis:** Inscription is open; what is contested is authority over shared projections. Separating the authorization plane from the argument plane lets anyone record a claim while limiting who can change what is displayed as standing, and makes that limit itself a recorded, contestable object.
- **Source chapters:** 16, 14, 17
- **Required definitions:** planes (C and Act); capability; revocation (prospective); invalidation; restriction on the meta surface; disposition with computed reason
- **Principal result or example:** Prop. openinscription; Prop. capnostanding; Prop. planes; the capture table
- **Dependencies:** 2; feeds 9
- **New research required:** none for the argument
- **What it must not claim:** that governance quality is a consequence of the design (it is institutional); that authority can be removed from the system
- **Likely venue or audience:** governance and community-platform readers
- **Status:** first draft complete (11 pp), companions/11-inscription-and-authority.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

# Track E. Registers

## 18. Dialogue on the Unit
- **Title:** Dialogue on the Unit
- **Track:** E, register (dialogue)
- **Form:** Platonic dialogue with three speakers (editor, statistician, skeptic), 3,000 to 5,000 words
- **Thesis:** Same as 1, reached by objection and reply.
- **Source chapters:** 1, 4, 7
- **Required definitions:** as in 1, introduced through speech
- **Principal result or example:** the skeptic's strongest objection (a page is enough if well edited) and the reply
- **Dependencies:** 1
- **New research required:** none
- **What it must not claim:** anything not in 1; any real person's views
- **Likely venue or audience:** general readers
- **Status:** first draft complete (10 pp), companions/18-dialogue-on-the-unit.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 19. Reader's Guide to a Claim Page
- **Title:** Reader's Guide to a Claim Page
- **Track:** E, register (explainer)
- **Form:** illustrated explainer built on the poster
- **Thesis:** A reader can learn to read claim, scope, objections and the status vector in a few minutes.
- **Source chapters:** 4, 7, 12, 18
- **Required definitions:** plain-language versions of claim, scope, objection, status
- **Principal result or example:** one annotated page mockup
- **Dependencies:** 1, 3
- **New research required:** usability testing is not claimed
- **What it must not claim:** that readers prefer it; any real interface
- **Likely venue or audience:** general public, onboarding
- **Status:** first draft complete (8 pp), companions/19-readers-guide-to-a-claim-page.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 20. Adversaria in Forty Frames
- **Title:** Adversaria in Forty Frames
- **Track:** E, register (comic)
- **Form:** comic in the tract idiom, 40 frames
- **Thesis:** The constitution in pictures: record traces, compute standing, reject scalar scores.
- **Source chapters:** 18 (constitution), 12, 13
- **Required definitions:** none beyond the three rules
- **Principal result or example:** one narrative of a claim being challenged and staying on the record
- **Dependencies:** 1, 3
- **New research required:** none
- **What it must not claim:** a real person or organization as a character
- **Likely venue or audience:** public outreach
- **Status:** first draft complete (10 pp), companions/20-adversaria-in-forty-frames.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 21. A Programmed Text on Argued Claims
- **Title:** A Programmed Text on Argued Claims
- **Track:** E, register (programmed instruction)
- **Form:** frame-by-frame booklet with exercises and answers
- **Thesis:** The labeling rules can be taught by practice on small graphs.
- **Source chapters:** 4, 6, 7, 10, 12
- **Required definitions:** claim, scope, argument, attack, label
- **Principal result or example:** exercise set ending with the labels of the A Contested Effect graph
- **Dependencies:** 5
- **New research required:** answers to every exercise must be machine-checked with the defeat_check script before release
- **What it must not claim:** that the booklet covers the full model
- **Likely venue or audience:** students
- **Status:** first draft complete (10 pp), companions/21-programmed-text-on-argued-claims.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 22. The Consensus Engine
- **Title:** The Consensus Engine
- **Track:** E, register (satire)
- **Form:** deadpan satirical essay
- **Thesis:** A system that stores only what a majority says is true will eventually store nothing it can explain.
- **Source chapters:** 1, 3, 12
- **Required definitions:** none
- **Principal result or example:** an invented system with invented committees
- **Dependencies:** 1
- **New research required:** none
- **What it must not claim:** that it describes any real system or person
- **Likely venue or audience:** general readers
- **Status:** first draft complete (8 pp), companions/22-the-consensus-engine.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

# Track F. Bridges to the wider corpus

## 23. Reversibility and Standing
- **Title:** Reversibility and Standing
- **Track:** F, connective essay
- **Form:** essay, 4,000 to 6,000 words
- **Thesis:** Action under unsettled claims needs a reading of standing that keeps contested status visible; the status vector supplies it and a scalar hides it.
- **Source chapters:** 12, 16 (reconstruction gate)
- **Required definitions:** status vector; frontier; reconstruction gate
- **Principal result or example:** Prop. reconneutral
- **Dependencies:** 3, and the existing reversibility gate essay in the corpus
- **New research required:** re-read the existing essay to align terms
- **What it must not claim:** that the gate decides what to do
- **Likely venue or audience:** corpus readers
- **Status:** first draft complete (9 pp), companions/23-reversibility-and-standing.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 24. Transport and Gluing
- **Title:** Transport and Gluing
- **Track:** F, connective essay
- **Form:** essay
- **Thesis:** Ontology transport and page gluing are the same kind of problem: carrying a statement across an overlap, and the failure mode is an overlap that does not commute.
- **Source chapters:** 8, 15
- **Required definitions:** mapping claim; transport warrant; signed identification
- **Principal result or example:** a mapping cycle with negative sign viewed as an obstruction
- **Dependencies:** 7, 13, and the existing essays on epistemic transport and on gluing in the corpus
- **New research required:** state precisely in what sense the two are instances of one condition, or downgrade to an analogy
- **What it must not claim:** that they are formally identical unless proved
- **Likely venue or audience:** corpus readers
- **Status:** first draft complete (9 pp), companions/24-transport-and-gluing.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

## 25. Ledger and Recoverable Distinction
- **Title:** Ledger and Recoverable Distinction (retitled from "Inscription and the Ledger" to avoid overlap with No. 11)
- **Track:** F, connective essay
- **Form:** essay
- **Thesis:** An append-only ledger preserves the distinctions that later repair and dispute depend on, and withdrawal as deletion up to labeling is what lets the record stay honest.
- **Source chapters:** 9, 17 (Cor. batchwithdraw)
- **Required definitions:** ledger; lineage; withdrawal; replay
- **Principal result or example:** Thm. replay; Cor. batchwithdraw
- **Dependencies:** 9, and the existing recoverable-distinction work in the corpus
- **New research required:** align terms with the existing monograph
- **What it must not claim:** that preservation guarantees truth
- **Likely venue or audience:** corpus readers
- **Status:** first draft complete (8 pp), companions/25-ledger-and-recoverable-distinction.tex; literature deliberately not surveyed; agent-flagged checks pending; awaiting author review

---

# Duplication check

- 2 and 13, and 24: all involve passing something across a boundary. 2 is about which arguments are shown, 13 about claims across mappings, 24 about the shared structure. Keep 24 an analogy unless proved.
- 3 and 8: 3 is the argument and design rule, 8 the theorem. 8 must not repeat 3's prose.
- 3 and 16: 16 must prove it is not a scalar; write it last.
- 10 and 12: both use examples of disagreement. 10 is a taxonomy, 12 a comparison of presentations.
- 6 and 17: 6 schematic only; 17 real, research-gated. Never share names or data.
- 9, 11 and 25: all touch the ledger. 9 is the protocol, 11 the authority question, 25 the recoverability theme.
- 18 to 22: registers of one argument. None may add a claim absent from 1 to 4.

# Open decisions for the author

- Whether any companion may name other systems (default: no, except No. 12 with documentation).
- Which real figure, if any, No. 17 should take up, and whether to do it at all.
- Whether No. 7 and No. 14 are submitted to journals or kept in the public repository only.
- Whether companions live in the monograph repository or in separate repositories with the monograph as a cited source.
