## Governing Thesis {#governing-thesis .unnumbered}

A finite agent cannot simultaneously maintain every aspect of every artifact at maximal resolution. Productive activity therefore requires selective relegation: aspects judged sufficiently stable for the current purpose are withdrawn from active attention, while unresolved, unstable, novel, or consequential aspects remain foregrounded. Completion is one institutionalized description of this attentional boundary.

An artifact is not simply finished or unfinished. It is a structured field whose aspects occupy different states of attention, stabilization, maintenance, and transformability.

The argument runs from finite attention to aspect relegation; from relegation to graded completion; from graded completion to labor allocation; from allocation to deliberate cessation; from cessation to preserved contribution surfaces; and from those surfaces to an open corpus whose unoccupied transformations are part of its productive capacity.

The strongest claim is not that unfinished work is good. It is that universal completion is impossible for a sufficiently generative finite agent, that selective completion is therefore unavoidable, and that the location of stopping boundaries can be designed.

# Completion as a Variable

## Finish Is Not a Binary Property

### Claim

"Finished" collapses multiple independent predicates. For an artifact $x$ with aspects $A(x)=\{a_1,\ldots,a_n\}$, completion relative to purpose $\tau$ is a vector $$C_\tau(x)=(c_1,\ldots,c_n),\qquad c_i\in[0,1],$$ with no purpose-independent scalar $C(x)$ assumed. Hence $C_{\text{proof-of-concept}}(x)\approx 1$ can hold alongside $C_{\text{maintained-product}}(x)\ll 1$.

### ART extension

Completion is partly an attentional judgment. Introduce an active set $F_t(x)\subseteq A(x)$ and a relegated set $R_t(x)=A(x)\setminus F_t(x)$. Declaring an aspect complete says that, for the present objective, further inspection no longer merits foreground attention.

### Burden of proof

Show that ordinary uses of "finished" already vary by purpose: experiment, manuscript, proof of concept, release, maintained infrastructure, pedagogical exercise.

### Consequence

Cessation does not imply exhaustion. "This establishes what it was intended to establish" is a legitimate stopping condition.

## Regimes of Labor

### Claim

Initial work expands the represented problem, $A_0\subset A_1\subset\cdots$. Later work stabilizes, checks, packages, documents, distributes, and maintains discovered structure.

### ART extension

Skill lets effortful operations be relegated without making them costless. $$\text{attentional cost}\neq\text{execution cost}\neq\text{maintenance cost}.$$

::: proposition
**Proposition 2.1**. *For attention budget $B$, $\sum_{a_i\in F_t} w_i\le B$. If generation keeps introducing novel aspects while maintenance keeps re-promoting old ones, sufficiently large corpora create competition between generation and custodianship.*
:::

### Consequence

Generative capacity and maintenance capacity are different capacities.

## Counterfactual Artifacts

### Claim

Polish consumes the attention available for generation elsewhere. With $L(x,\delta)$ the labor for increment $\delta$, the relevant comparison is $x+\delta$ against $\{x,y_1,\ldots,y_k\}$, where the $y_i$ are displaced artifacts.

### ART extension

Define re-promotion pressure $\rho(a_i,t)$ as evidence that a relegated aspect should return to the foreground. A rational policy need not re-promote merely because improvement is possible.

::: principle
**Principle 3.1**. *Possibility of improvement is insufficient evidence for re-promotion.*
:::

### Consequence

The invisible cost of polish is the set of unrealized alternatives.

# Unfinishedness as Interface

## Affordances for Contribution

### Claim

One agent's stopping boundary can be another's entry boundary: $a_i\in R^u_t$ and $a_i\in F^v_t$ can hold together.

### ART extension

Relegation is agent-relative; it does not mean intrinsic unimportance. The contribution surface is $$\Gamma(x,u,v)=R^u(x)\cap E^v(x),$$ with $E^v(x)$ the aspects legibly actionable by contributor $v$.

::: principle
**Principle 1.1**. *An unfinished edge can transfer an aspect from one agent's relegated set into another agent's learning frontier.*
:::

### Consequence

Some roughness has positive pedagogical and participatory value.

## Signaling and Legibility of Intent

### Claim

A contribution surface works only if another agent can recognize it.

### ART extension

Relegation is private; observers see the artifact, not the allocation decision. $$\text{visible incompleteness}\nRightarrow\text{legible intentional relegation}.$$ Observers may infer abandonment, incompetence, lack of time, or technical debt.

### Consequence

Minimal declarations act as metadata for attentional state, without claiming that every defect was manufactured. Candidate wording is collected in an appendix.

## Illustration Corpora

### Claim

Local repair and upstream repair are different operations. For derivatives $I_j=P_{\theta_j}(x)$, a semantic defect in $x$ that appears across many $I_j$ is untouched by repairing individual images.

### ART extension

Repeated downstream failure $\{e_1,\ldots,e_m\}$ raises $\rho(a_i,t)$; once it crosses a threshold the source aspect should be re-promoted.

::: principle
**Principle 3.1**. *Recurring derivative error is evidence for upstream re-promotion.*
:::

A malformed hand may stay a local rendering defect. A repeatedly misunderstood proposition returns its TeX passage to active scrutiny.

# Artifact, Process, Capability

## Artifact Quality and Production Capability

### Claim

Artifact quality does not identify the process that produced it.

### ART extension

Expertise often manifests as extensive relegation, so a fast high-quality result may embody more stabilized structure, not less cognition: $T_{\text{foreground}}\not\propto K_{\text{acquired}}$.

### Consequence

Capability is task-relative, $$\mathcal{C}_\tau=F(Q_\tau,R_\tau,S_\tau,T_\tau,H_\tau),$$ with no universal scalar assumed.

## Duration, Skill, and Craft Discourse

### Claim

Elapsed labor is provenance, not automatically quality.

### ART extension

Skill reduces foreground decisions by relegating stabilized microoperations. Comparable artifacts made in 30 minutes and 90 hours may differ in how much of the task remains unrelegated.

### Qualification

Long duration can be constitutive of a valued practice. ART explains differences in attentional organization and does not impose throughput as a universal value.

### Consequence

Production contexts and process-valuing practices need different evaluation functions.

## Provenance of Contribution

### Claim

A finished derivative conceals the procedure that produced it.

### ART extension

For a transformation $(x,\pi)\to y$, record the intervention structure $\pi=(M,A,T,F)$: machine operations, active human interventions, elapsed or active time, and failure cases.

### Consequence

The target for automation is often reduction in required foreground attention, not artifact quality alone: $$H_F(x)=\text{human foreground-attention demand per transformation}.$$ A pipeline that lowers $H_F$ is valuable even at unchanged quality.

# Source and Projection

## Source as Manipulable Representation

### Claim

A rendered artifact suppresses degrees of freedom retained by its source, $s\xrightarrow{\text{render}}x$.

### ART extension

Rendering is representational relegation. Compilation instructions, macros, structural markup, and transformation affordances stay upstream while the reader-facing artifact foregrounds what matters for consumption.

### Consequence

Providing source preserves the possibility of re-promoting those dimensions. This is the basis of the source-code conception of scholarship.

## Transformation Families

### Claim

Structured source supports an extensible family $T_\theta(x)$, $\theta\in\Theta$.

### ART extension

Each transformation foregrounds some aspects and relegates others. Its attentional profile is $\alpha_\theta(a_i)\in[0,1]$, the degree to which $T_\theta$ preserves or foregrounds $a_i$. Translation, abridgment, metaphor substitution, audio rendering, visual summarization, and pedagogical rewriting instantiate different $\alpha_\theta$.

### Consequence

A transformation is a redistribution of representational salience, not merely another format.

## Projections under Informational Boundary

### Claim

Single-source projections diagnose what the source itself makes recoverable: $P_\theta(x)$ differs epistemically from $P_\theta(x,r_1,\ldots,r_n,c)$.

### ART extension

Projection is controlled forced relegation. Let $S_\theta(x)\subseteq A(x)$ be the aspects surviving projection. Survival across heterogeneous projections, $a_i\in\bigcap_j S_{\theta_j}(x)$, is evidence of structural prominence in $x$, not of truth or normative importance. Repeated disappearance of an intended central aspect is evidence for source inspection.

### Feedback loop

$$x_t\to\{P_{\theta_j}(x_t)\}\to D_t\to R^{-1}(D_t)\to x_{t+1},$$ where $D_t$ is diagnostic discrepancy and $R^{-1}$ denotes selective re-promotion, not literal inversion.

::: principle
**Principle 3.2**. *Projection can function as representational testing.*
:::

# Restraint

## Refusing Escalation

### Claim

Minimalism need not mean producing little. It can mean limiting the obligations attached to each production.

### ART extension

Restraint is disciplined non-promotion: $\text{available}(a_i)\nRightarrow a_i\in F_t$.

::: principle
**Principle 1.1**. *Refusal is an allocation operation.*
:::

### Consequence

Prolific generation and minimalism are compatible.

## Demonstration Without Occupation

### Claim

A transformation family can be demonstrated without being exhaustively instantiated.

### ART extension

Once transformability is established, further examples become redundant aspects eligible for relegation. The author establishes $\exists\,\theta_1,\ldots,\theta_k$ with $T_{\theta_i}(x)$ without approximating $\{T_\theta(x):\theta\in\Theta\}$.

::: principle
**Principle 2.1**. *Produce enough transformations to establish transformability, then relegate the demonstrated operation unless a new transformation tests a genuinely new dimension.*
:::

### Consequence

Stopping preserves adjacent possibility rather than exhausting it.

## Objections and Failure Modes

### Central objections

ART could rationalize neglect. Relegation can be premature. An aspect can look stable because errors go undetected. Contribution surfaces can transfer unwanted labor to others. Roughness can raise entry costs. Maintenance failures can impose externalities.

### ART response

Relegation needs conditions for re-promotion. A mature ART requires a promotion policy alongside the relegation operator: $$P(a_i\mid e_t,c_t,\ell_t),$$ conditioned on error evidence $e_t$, context $c_t$, and consequence or loss $\ell_t$.

::: proposition
**Proposition 3.1** (Constraint). *A theory of relegation without a theory of re-promotion degenerates into a theory of neglect.*
:::

## Recursive Limits of Explanation

### Claim

The monograph cannot exhaust objections, examples, transformations, polish, or formalization without violating its own allocation principle.

### Endogenous stopping condition

Stop when (1) the governing claims are recoverable; (2) major known objections have been promoted and treated; (3) remaining defects do not threaten the central argument; (4) additional work has predominantly derivative rather than corrective value.

### Consequence

The book separates relegated remainder, which is acknowledged work left outside the current foreground, from unknown remainder, which remains a source of epistemic humility.

# Formal Back Matter {#formal-back-matter .unnumbered}

## ART State Model

For agent $u$, artifact $x$, time $t$: $A(x)=F_t^u\cup R_t^u$ with $F_t^u\cap R_t^u=\varnothing$. The update is not purely subtractive: $$F_{t+1}^u=(F_t^u\setminus D_t^u)\cup N_t^u\cup Q_t^u,$$ with $D_t^u$ newly relegated, $N_t^u$ newly encountered, and $Q_t^u$ re-promoted aspects. This rejects $F_t\to\varnothing$ as the endpoint of expertise; expertise changes the composition and resolution of foreground attention.

## Stabilization

Context-relative stabilization $\sigma(a_i,\mathcal E,t)\in[0,1]$. High stabilization under environment class $\mathcal E$ does not imply it under $\mathcal E'$, which is the formal reason relegated aspects sometimes require re-promotion.

## Promotion Pressure

$$\rho_i(t)=f(\text{error},\text{novelty},\text{uncertainty},
  \text{consequence},\text{context shift},\text{contradiction}).$$ Re-promotion occurs when $\mathbb{E}[V(\text{inspect }a_i)]>\mathbb{E}[V(\text{leave relegated }a_i)]+\lambda_t$, with $\lambda_t$ the opportunity cost of foreground attention. This is a decision-theoretic schema, not a claim that cognition literally computes the expression.

## Distributed Relegation

For agents $u_1,\ldots,u_m$ with independent $F_t^{u_i}(x)$, $$\Bigl|\bigcup_i F_t^{u_i}\Bigr|>\max_i |F_t^{u_i}|.$$ Editors, proofreaders, translators, maintainers, reviewers, illustrators, and contributors instantiate distributed foreground attention. The traditional publication pipeline is an institutional response to finite individual attention. This is the bridge from cognition to institutions.

## Projection and Relegation

Loss profile $L_\theta(a_i)=1-\alpha_\theta(a_i)$. No projection is globally superior. An ensemble $\mathcal P(x)=\{P_{\theta_1}(x),\ldots,
P_{\theta_n}(x)\}$ can expose source instability when ostensibly central aspects show high loss across heterogeneous $\theta$. This grounds the use of podcasts, visual summaries, slides, and translations as diagnostic instruments.

## Declaration Templates

Short, medium, and long forms; placement in repositories.

## Provenance Record Template

Fields $(M,A,T,F)$ with example entries for a repaired illustration.

## Corpus Catalog

Representative repositories classified by completion vector and contribution surface.

## Projection Protocol

Procedure for generating single-source projections and comparing survival of aspects.

## Final Derivation {#final-derivation .unnumbered}

1.  Finite agents have bounded foreground attention.

2.  Learning and stabilization require some aspects to be relegated.

3.  Relegation is selective, reversible, contextual, and agent-relative.

4.  An artifact can be stable for one purpose while open for others.

5.  Completion is purpose-relative and multidimensional.

6.  Re-promoting every improvable aspect consumes the attention needed for new work, so rational production requires stopping rules.

7.  Stopping leaves unresolved or uninstantiated adjacencies; when legible and tractable, these become contribution interfaces.

8.  Because relegation is agent-relative, another person's foreground can occupy the author's background; division of labor converts individual relegation into distributed production.

9.  Manipulable source preserves more future re-promotion and transformation than terminal renderings.

10. Projection into heterogeneous media selectively foregrounds and suppresses aspects of the source; projection failures are evidence for re-promoting unstable aspects.

11. The corpus is at once publication, experimental apparatus, contribution interface, and reservoir of unrealized transformations.

The objective is neither maximal completion nor maximal incompletion. It is adaptive relegation: finish what must be stabilized for the present purpose, preserve what should remain transformable, expose useful contribution surfaces, re-promote aspects when evidence warrants, and refuse the inference that every visible possibility is an obligation to occupy it.
