# Signed Identifications and the Obstruction Region: literature matrix, novelty ledger, theorem statement

30 September 2026. Planning note for companion No. 7. Order of work: matrix, ledger, theorem, then draft.

**Method and limits.** Searches were run across five areas (signed-graph balance, Z/2 constraint satisfaction, Cech/sheaf treatments of contextuality and databases, identity reconciliation and ontology alignment, terminology). Each source below carries a verification level:

- **[read]** the page was fetched and the stated point was read there
- **[abstract]** only an abstract or catalogue entry was read
- **[title]** only a title and venue from search results
- **[memory]** standard knowledge not checked against a source this session

Nothing marked [title] or [memory] may be cited for its content before it is opened. The search was breadth-first and is not a systematic review. "Not found" below never means "absent".

Pages that could not be read: the Springer chapter for Abramsky's "Relational Databases and Bell's Theorem" (rate-limited, 429; later supplied by you as full text, now [read]), the EKAW 2014 PDF and its HAL page for Papaleo et al. (robots.txt and access denied).

## 1. Literature matrix

| Area | Source | Level | What it establishes | Relation to the paper |
|---|---|---|---|---|
| Balance | Harary, "On the notion of balance of a signed graph", Michigan Math. J. 2 (1953/54), 143 to 146 (catalogues give 1953 or 1955; confirm on the journal page before submission) | [abstract] via a bibliographic note; credited as the origin of balance in Zaslavsky 1982, p. 50 [read] | Balance: every cycle positive; equivalent partition into two sets joined only by negative edges | The criterion of Thm. signed is this theorem |
| Balance | Cartwright and Harary, "Structural balance: a generalization of Heider's theory", Psychological Review 63 (1956) | [title]; pages unverified | Structural balance in social psychology | Historical context only |
| Weak balance | Davis, "Clustering and structural balance in graphs", Human Relations 20(2) (1967), 181 to 187 | [abstract] for the citation; the theorem statement [read] in El Maftouhi and Harutyunyan, *Weak balance in random signed graphs*, Thm. 1.2 | Weakly balanced = no cycle with exactly one negative edge = vertex set partitions into classes, edges inside positive, between negative | The correct criterion for identity with differentFrom semantics (see section 4) |
| Switching, gain graphs | Zaslavsky, "Signed graphs", Discrete Appl. Math. 4 (1982), 47 to 74 | [read] excerpts | Switching by function v: sigma^v(uw) = v(u) sigma(uw) v(w), p. 51; Cor. 3.3: balanced iff switching equivalent to all-positive, p. 52; voltage graphs with arbitrary group labels, section 9 | Gives the switching formulation, group generalization |
| Gain graphs | Zaslavsky, "Biased graphs I. Bias, balance, and gains", J. Combin. Theory B 47 (1989), 32 to 52 | [title] | Gain graphs and balance | Pointer for non-Z2 groups |
| Bibliography | Zaslavsky, *A mathematical bibliography of signed and gain graphs and allied areas*, Electron. J. Combin. DS8 | [title] | Comprehensive bibliography | First place to look before any novelty claim about graph-theoretic content |
| Frustration | Barahona, "On the computational complexity of Ising spin glass models", J. Phys. A 15 (1982), 3241 | [title] | Ground-state problem NP-hard for nonplanar models | Background for minimum-repair (frustration index) claims. Not used |
| Z/2 constraints | XOR-SAT, 2-XOR-SAT | [memory] | Linear systems over GF(2) are solved by Gaussian elimination; two variables per equation reduces to parity of cycles | Signed criterion is the two-variable case of the Fredholm alternative over GF(2) (section 3) |
| Databases | Beeri, Fagin, Maier, Yannakakis, "On the desirability of acyclic database schemes", J. ACM 30(3) (1983), 479 to 513 | [read] venue on the JACM contents page | Acyclic schemes: pairwise consistency suffices for global consistency (contents of the theorem from memory, to be checked) | Already cited in Ch. 8 |
| Contextuality | Abramsky and Brandenburger, "The sheaf-theoretic structure of non-locality and contextuality", New J. Phys. 13 (2011), 113036 | [read] abstract | Contextuality corresponds to obstructions to the existence of global sections | The general phenomenon of which the triangle is a parity instance |
| Cohomology | Abramsky, Barbosa, Kishida, Lal, Mansfield, "Contextuality, cohomology and paradox", CSL 2015 | [read] summary | Cohomological obstruction gamma(r0) in H^1; vanishing gives a compatible family (Prop. 16); false positives are possible in general; All-vs-Nothing (parity) arguments are captured fully (Thm. 21) | Supports the paper's caution on H^1; parity (AvN) case is exact |
| Databases and contextuality | Abramsky, "Relational databases and Bell's theorem", arXiv:1208.6416v2 (2013); also LNCS 8000 | [read] via the full text you supplied | Gluing condition = existence of a universal relation (Prop. 2.2); deciding it is NP-complete, attributed to Honeyman, Ladner, Yannakakis, Inf. Process. Lett. 10 (1980), 14 to 19 (citation as given there, not opened); acyclicity of the schema (BFMY 1983) is the condition guaranteeing gluing; GHZ models are strongly contextual by a parity argument (Prop. 6.1); Kochen-Specker parity counting (Prop. 6.2); the triangle schema {a,b},{b,c},{a,c} is the simplest cyclic schema; Vorob'ev condition equivalent to acyclicity (Barbosa, personal communication, as reported) | Directly relevant: general gluing is NP-complete, our signed pointwise case is polynomial, and Prop. cx(b) is hardness from the product structure of Omega, a different source. Parity obstructions are the same family as ours |
| Sheaves on graphs | Hansen and Ghrist, "Toward a spectral theory of cellular sheaves", J. Appl. Comput. Topol. 3 (2019), 315 to 358 | [read] | H^0 = global sections; on graphs H^1 is the cokernel of the coboundary | Supports the exact statement "graph, no 2-cells, H^1 = C^1 / im delta" |
| Sheaves and data | Robinson, "Sheaves are the canonical data structure for sensor integration", Information Fusion (2017) | [title] | Sheaf-based integration of data | Related framing; content unread |
| Obstruction terminology | Yokoyama (2026), *Relative obstructions and spectral diagnostics for sheaves on cell complexes*, arXiv 2601.19056 | [read] partial | Uses "relative obstruction" (mapping-cone cohomology) and cellwise spectral localization; the phrase "obstruction region" does not appear | No established meaning of "obstruction region" found, but nearby vocabulary exists |
| Identity links | Halpin et al., "When owl:sameAs isn't the same", ISWC 2010 | [title] | Empirical misuse of sameAs | Context |
| Identity links | Raad, Pernelle, Saïs, Beek, van Harmelen, "The sameAs problem: a survey on identity management in the Web of Data", Semantic Web | [read] excerpts | sameAs is an equivalence; differentFrom is rare (about 3.6K against 558M sameAs in a 2015 crawl); large equivalence classes contain incorrect links; "consistency does not necessarily imply correctness"; the survey does not explicitly address cycles or propose global consistency algorithms | Closest identity-management literature; detection is by network metrics, community structure, constraint violations |
| Identity links | Raad et al., "Detecting erroneous identity links on the web using network metrics", ISWC 2018 | [title] and search snippet (community structure) | Community detection for erroneous links | Different method from cycle criterion |
| Identity links | Papaleo, Pernelle, Saïs, Dumont, "Logical detection of invalid sameAs statements in RDF data", EKAW 2014 | [title] | Logical detection via constraints | Content unread; do not characterize |
| Clustering | Bansal, Blum, Chawla, "Correlation clustering", Machine Learning 56 (2004), 89 to 113 | [abstract] | Partition with + within and - across; approximation results | The relation to weak balance (perfect clustering exists iff no cycle with one negative edge) is [memory], and is not in the abstract I read. Verify |
| Ontology alignment | Meilicke, Stuckenschmidt, Tamilin, "Repairing ontology mappings", AAAI 2007 | [title] | Repair of incoherent mappings | Contrast: deletion-based repair. Content unread |
| Ontology networks | Euzenat, "Revision in networks of ontologies", Artif. Intell. 228 (2015), 195 to 216 | [abstract] | Belief-revision postulates for networks; inconsistency is local or global between ontologies and alignments; partial meet revision | Closest prior treatment of global inconsistency in aligned networks; revision-based, not argumentation-based |
| Synchronization | Pachauri, Kondor, Singh, "Solving the multi-way matching problem by permutation synchronization", NIPS 2013 | [title] | Cycle consistency of pairwise permutations | Non-abelian analogue of the same cycle condition. Pointer only |
| Dynamic signed graphs | e.g. "The evolution of structural balance in time-varying signed networks" and "Inference for balance in dynamic signed networks" (arXiv 2606.08786) | [title] | Balance studied over time-varying signed networks | Nearest to region-indexed edge presence. Not read. Must be read before any claim about the localization result |

**Not searched:** argumentation-theoretic treatments of identity or merging, and structured argumentation systems. Claim 4 below is therefore provisional.

## 2. Novelty ledger

The four questions, answered at the level the evidence supports.

**1. Is the odd-cycle criterion new?** No. It is Harary's balance theorem, with switching formulation in Zaslavsky 1982. It is also the two-variables-per-equation case of solvability of linear systems over GF(2). The paper must state this in its first page and claim nothing here.

**2. Is its reading as failure to glue scoped identification claims new?** Partly known in pieces, and I did not find it assembled.
- Known: pairwise-consistent local data failing to glue is the subject of the database literature (acyclic schemes) and of sheaf-theoretic contextuality; parity arguments are exactly the case the cohomological method captures completely.
- Known: the graph with a Z/2 signature and the class in H^1 of the graph.
- Not found: an application of the signed-cycle criterion to identity links among pages or knowledge-graph entities. The identity-management literature I read detects errors by network metrics, community structure and constraint violation and does not state a global cycle criterion.
- Verdict: the interpretation is probably a fresh application and not a fresh result. Claim it as "application and exposition", and do not say "first".

**3. Is computing the minimal scope region new?** Low novelty for the localization itself, because it follows at once from the pointwise criterion: Ob is the set of units where the graph of active edges is unbalanced. Three smaller items may count:
- the formula as a union over negative simple cycles of intersections of edge regions, together with closure under the Boolean algebra of scopes and the restriction identity Ob(E restricted to S) = Ob(E) intersected with S;
- the proof that deciding Ob nonempty is NP-complete when regions are boxes over many dimensions (new to this note; a short reduction from CNF-SAT, verified by brute force on 400 random instances, but not found in the literature and plausibly folklore);
- the generalization from signed graphs to arbitrary XOR rows, where minimal dependencies replace negative cycles (standard linear algebra, stated for completeness).
- Open risk: the dynamic and temporal signed-network literature may already study the set of times at which a graph is unbalanced. Unread.
- Verdict: present as "exact localization and its complexity", not as a graph theorem.

**4. Is representing repairs as ledgered argumentative acts the original contribution?** Probably the most original part, and the one I can check least. Comparisons found: repair by deleting or revising links (Euzenat revision, ontology mapping repair), and by reclassifying links (network-metric methods for sameAs). The paper's repairs are non-destructive records: an undercutter removes an edge at the units where it stands, a pooling declaration confines edges to slices, and leaving the obstruction unresolved is a legitimate state. All three are monotone in the obstruction region (they can dissolve, never create). Verdict: plausible main contribution. Claim "in the treatment surveyed" and not "first", and do a dedicated argumentation-theory search before submission.

**Summary:** established mathematics, a new application and integration, a small scoped localization layer (with a complexity statement), and a repair calculus. This matches the framing you proposed.

## 3. Theorem statement at the weakest exact level

Setting: a finite vertex set [n]; a finite family E of signed identifications e = (i, j, s, R), s in {+1, -1}, R a region of the unit space Omega; G_x the signed multigraph of edges with x in R. A solution at x is an assignment v in {+1, -1}^n with v_j = s v_i for each edge active at x.

**(A) Pointwise facts (classical).**
1. A solution exists at x iff G_x is balanced (every cycle has sign product +1).
2. If a solution exists, the solution set has exactly 2^{c(x)} elements, where c(x) is the number of connected components of G_x on the vertex set [n] (isolated vertices count), and any two solutions differ by a sign flip that is constant on each component. This is uniqueness up to componentwise switching.
3. G_x is balanced iff its signature is switching equivalent to the all-positive signature.

**(B) Localization.**
1. Ob(E) := {x : G_x unbalanced} equals the union over negative simple cycles C of the multigraph of all edges of the intersection of R_e over e in C. Hence Ob(E) is a region.
2. Ob(E) is the exact failure set. Every procedure that examines only some cycles returns a subset, called a detected region. A set of negative cycles is a covering set when the union of their regions equals Ob(E). Inclusion-minimal covering sets exist and are not unique. Computing a smallest one is not analysed here.
3. A global assignment Omega -> {+1, -1}^n exists iff Ob(E) is empty. This uses the modelling assumption that units are solved independently.
4. Monotone: shrinking a region or deleting an edge never enlarges Ob. Restriction: Ob of E with each R replaced by R intersected S equals Ob(E) intersected S. Additivity: Ob(E union E') contains Ob(E) union Ob(E').

**(C) Interface with the claim-graph semantics.**
1. Edges enter G_x only at units where their argument is IN. Replace R_e by the region In(e) where the argument stands. Units where the argument is UND give a potential obstruction, Ob over IN-or-UND edges minus Ob over IN edges.
2. Labeling of identification arguments does not depend on Ob. The obstruction attacks nothing; a rule turning it into an attack would be a policy, not a consequence.
3. Repairs: an undercutter that stands replaces In(e) by a smaller region; a pooling declaration confines R_e to slices. Both are sub-regioning operations and so cannot enlarge Ob. Adding an edge or enlarging a region can create one.

**(D) Complexity.**
1. Testing x in Ob(E) is linear in the number of edges.
2. Deciding Ob(E) nonempty is in NP, and NP-complete when regions are boxes over binary dimensions with many dimensions. Reduction: a chain of clause gadgets of parallel positive edges, one per literal with region {variable = value making the literal true}, closed by one negative edge with region Omega. A negative cycle is active at x iff x satisfies the formula. It is polynomial when the space of units is given explicitly, or when the number of vertices is bounded.

**(E) Beyond signed graphs (exact, standard).** For rows r_i of a linear system over GF(2) with regions R_i, Ob = union over dependencies y (y A = 0, y b = 1) of the intersection of R_i over i in the support of y. Only inclusion-minimal supports are needed; for signed graphs these are the negative simple cycles. This is the Fredholm alternative over GF(2) with regions.

**(F) Cohomological reading (interpretation only).** For fixed x, with G_x a graph (no 2-cells), Z/2 coefficients: a solution exists iff the class of the signature in H^1(G_x; Z/2) = C^1 / im delta vanishes. The regional set Ob is not claimed to be the support of a class in a cohomology of Omega; building such an object would need a topology or cover on Omega and is open. General sheaves: vanishing of H^1 does not guarantee gluing in general, and false positives are possible (Abramsky et al. 2015).

## 4. A modelling issue the literature check exposed

The signed model asserts v_j = s v_i for binary variables. A positive edge means the two pages' figures agree on a property. A negative edge means they disagree on it. That is a statement of opposite property values, which is stronger than distinctness of entities.

Under identity semantics with owl:differentFrom-style distinctness, the condition is Davis's weak balance, not Harary balance: the unsatisfiable structures are cycles with exactly one negative edge. A triangle of three mutually distinct pages (all edges negative) is unbalanced in the Z/2 model, but is consistent under identity semantics, since three entities can be pairwise distinct.

Checked by computation (scratchpad/signed_check.py and xor_weak_check.py): the regional formulas for Z/2 balance (union over negative simple cycles), for GF(2) dependencies (E) and for weak balance were each confirmed against unit-by-unit brute force on 300 random instances; the solution count 2^{c(x)} was confirmed on the Z/2 instances. The all-negative triangle is unbalanced in the Z/2 model and weakly balanced; the (+, +, -) triangle is unbalanced in both.

Consequences:
- The Adam-style example of Ch. 8 and Ch. 19 (+, +, -) holds under both readings, and Ob = {a3} x S either way. The worked case stands.
- The general statement of Ch. 8 (Thm. signed) is correct for the Z/2 model. Its application to "distinct figures" needs one of two repairs: state that the negative edge says the specified property differs, or add the weak-balance variant for distinctness. The paper treats both and notes the difference.
- Recommended monograph edits (not applied, pending your decision): a sentence in Ch. 8 after the Definition of signed identification, and a matching remark in Ch. 19 setup. Both are about wording. No theorem in the monograph changes.
- The regional machinery is identical: for weak balance, Ob is the union over negative edges e and positive paths P joining the endpoints of e of the intersection of the regions of e and of P.

## 5. Terminology

- "Obstruction" is established in sheaf-theoretic contextuality, where the cohomological obstruction of a section is a class in H^1 (Abramsky et al. 2015), and in algebraic topology generally. "Obstruction region" as a set of units appears not to be an established term, but it sits close to "cohomological obstruction", "relative obstruction" and "obstruction to global section".
- Risk: a reader may expect a cohomology class. Mitigation: define Ob once as a subset of the unit space by the pointwise criterion, add a terminology remark, and avoid writing "an H^1 class" as shorthand for inconsistency.
- Alternative names if you prefer to avoid the collision: "inconsistency region" or "frustration region" (frustration is used for signed graphs). The paper keeps "obstruction region" for continuity with the monograph and flags the alternative. Your call.

## 6. Open items

- Read before submission: the dynamic and temporal signed-network literature; Zaslavsky's bibliography; Papaleo et al. 2014; Honeyman, Ladner, Yannakakis 1980 (cited via Abramsky); Abramsky, Mansfield, Barbosa QPL 2011 (cited via Abramsky); Meilicke et al. 2007; confirm Harary's year and Cartwright and Harary's pages.
- Do an argumentation-theory search (structured argumentation, identity and merging) for claim 4.
- Decide on the monograph wording edits in section 4.
- Decide whether the NP-completeness proposition stays in the paper (it is small and self-contained, and worth keeping if the literature check on dynamic graphs comes back clean).
