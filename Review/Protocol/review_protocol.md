# Systematic Review Protocol

## Mathematical Models of Vector Borne Diseases Incorporating Human Behavior

**Version:** 1.0
**Date:** January 13, 2025
**Registration status:** Not registered in PROSPERO, since PROSPERO's eligibility criteria require a health related outcome and this review does not report a pooled health outcome. This protocol is published on GitHub before completion of data extraction and synthesis, to provide a timestamped, public record of the planned methods.

## 1. Review Team

* Santigo Villamil-Chacón, BIOMAC research group, Universidad de los Andes. Lead reviewer, protocol development, data extraction, analysis, manuscript drafting.
* Juanita Prada-Mora, reviewer 2. Independent screening, data extraction, conflict resolution.
* Dr. Mauricio Santos-Vega, BIOMAC, Universidad de los Andes. Supervision, protocol review.

## 2. Objective

The objective of this review is to identify, classify, and critically analyze how human behavior has been formalized and incorporated into mathematical models of vector borne diseases, and to develop a conceptual framework that organizes existing methodologies according to both the mathematical modeling approach and the type of human behavior they represent.

## 3. Eligibility Criteria

**Inclusion.** A study was eligible if it met all of the following conditions, it presented an explicit mathematical or computational model of disease transmission, the model represented a vector borne transmission mechanism, and the model incorporated a human behavioral or decision making component as part of its structure.

**Exclusion.** A study was excluded if it lacked an explicit mathematical or computational model, if it described a transmission mechanism that was not vector borne, or if it lacked an explicit human behavioral component. In practice, the absence of any one of these three elements, model, vector, or behavior, was sufficient for exclusion.

**Other restrictions.** No language restriction was applied during the search, full text screening was limited to English or Spanish. No date restriction was applied at the search stage. No restriction was applied by publication type, provided a full text was retrievable.

## 4. Information Sources

Four databases were searched, Web of Science, Scopus, Google Scholar, and Science Direct. Full text access was obtained primarily through open access sources and through institutional agreements with the Universidad de los Andes library system. No registers, organizational websites, or citation chasing were used.

## 5. Search Strategy

The search was conducted in two stages, using the same four databases, between December 2024 and June 2026, with the final search update in June 2026.

### 5.1 Stage 1, broad keyword search

Primary keyword set: Mathematical model, Vector, Behavior, Decision, Game theory, Vector transmission, Vector borne.

| Resource | Keywords used | Non filtered | Preliminary filter |
|---|---|---:|---:|
| Web of Science | Mathematical model + Vector transmission + Behavior | 5 | 4 |
| Web of Science | Mathematical model + Vector borne + Behavior + Game theory | 2 | 1 |
| Web of Science | Mathematical model + Vector + Behavior + Game theory + Decision | 7 | 1 |
| Web of Science | Model + Vector borne + Game theory | 5 | 2 |
| Web of Science | Mathematical model + Vector disease + Decision + Human behavior | 79 | 7 |
| Scopus | Vector borne + Disease + Decision + Behavior + Model | 17 | 3 |
| Scopus | Mathematical model + Behavior + Vector borne | 90 | 15 |
| Scopus | Mathematical model + Vector disease + Decision + Human behavior | 18 | 5 |
| Google Scholar | Mathematical model + Vector disease + Decision + Human behavior | 337 | 48 |
| Science Direct | Mathematical model + Vector disease + Decision + Human behavior | 16 | 7 |
| Total | | 576 | 93 |

Principal keyword combination retained for Stage 2: Mathematical model + Vector + Behavior + Decision.

### 5.2 Stage 2, expanded search by modeling framework

Boolean strings used, each combined with vector borne terminology and behavior terms:

1. ("vector borne disease" OR "vector borne diseases") AND ("partial differential equation" OR "reaction diffusion") AND ("human behavior" OR awareness OR "decision making")
2. ("vector borne disease" OR "vector borne diseases") AND ("fractional order model" OR "fractional differential equation") AND ("human behavior" OR awareness OR "decision making")
3. ("vector borne disease" OR "vector borne diseases") AND ("agent based model" OR "individual based model") AND ("human behavior" OR awareness OR "decision making")
4. ("vector borne disease" OR "vector borne diseases") AND ("Markov chain" OR "Markov model") AND ("human behavior" OR awareness OR "decision making")

| Resource | Framework | Non filtered | Preliminary filter |
|---|---|---:|---:|
| Google Scholar | PDE, reaction diffusion | 183 | 8 |
| Google Scholar | Fractional order, FDE | 73 | 8 |
| Google Scholar | Agent based, individual based | 392 | 8 |
| Google Scholar | Markov chain, Markov model | 480 | 1 |
| Web of Science | PDE, reaction diffusion | 15 | 3 |
| Web of Science | Fractional order, FDE | 5 | 3 |
| Web of Science | Agent based, individual based | 7 | 2 |
| Web of Science | Markov chain, Markov model | 2 | 0 |
| Science Direct | PDE, reaction diffusion | 56 | 2 |
| Science Direct | Fractional order, FDE | 21 | 2 |
| Science Direct | Agent based, individual based | 86 | 3 |
| Science Direct | Markov chain, Markov model | 107 | 3 |
| Total | | 1,427 | 43 |

### 5.3 Combined yield

| Stage | Non filtered | Preliminary filter |
|---|---:|---:|
| Stage 1 | 576 | 93 |
| Stage 2 | 1,427 | 43 |
| Combined | 2,003 | 136 |

The preliminary filter was applied directly in each database's search interface, before manual screening. The 136 preliminary filtered records entered manual screening.

## 6. Study Records

### 6.1 Data management

All records were exported and consolidated in a shared Google Drive repository, accessible to the three reviewers. Bibliographic information and screening outcomes were logged in structured Excel spreadsheets, decisions and notes were recorded in accompanying Word documents. Duplicates across databases and search stages were identified and removed programmatically using R and Python.

### 6.2 Selection process

Selection was carried out independently by three reviewers, in two stages. First, title and abstract screening of the 136 preliminary filtered records against the eligibility criteria. Second, full text screening of retrieved reports against the same criteria. At both stages, disagreements were resolved through structured discussion among the three reviewers until consensus was reached, no majority vote or external adjudicator was required.

### 6.3 Data collection process

For each included study, one reviewer performed initial data extraction using the standardized registry described below, a second reviewer checked the extraction, and discrepancies were resolved by discussion among the three reviewers.

## 7. Data Items

| Field | Description |
|---|---|
| Id | Unique identifier, source plus sequential number, example Scholar19, Scopus7 |
| Name | Study title |
| Year | Publication year |
| DOI | Digital Object Identifier, where available |
| Transmission 1, Transmission 2 | Disease and transmission context |
| Model 1, Model 2 | Primary and secondary modeling framework |
| Methodology 1, 2, 3 | Analytical or simulation techniques used |
| Behavior 1, 2, 3 | Behavioral mechanism represented, per taxonomy in 7.1 |
| Data | Type or source of data used to parameterize or validate the model |
| Stochasticity | Deterministic, stochastic, or both |

### 7.1 Behavioral mechanism taxonomy

| Mechanism | Description | Parameters typically affected | Parameters typically added |
|---|---|---|---|
| Personal Protection | Reduces individual susceptibility or exposure, repellents, ITNs, LLINs, LLHs | Biting rate, vector mortality rate, force of infection, contact rates | Time of protection, repellent efficacy, level of protection, probability of feeding |
| Vaccination | Confers immunity through vaccination | Force of infection | Vaccination efficacy, immunity loss rate, vaccination rate |
| Movement | Spatial mobility of individuals or populations | Contact rates, force of infection | Location dependent exposure, activity dependent risk, mobility matrix, travel frequency |
| Control | Population level reduction of transmission, mechanical control, fumigation, residual spray | Vector mortality rate, recruitment rate, carrying capacity | Fumigation rate, larvicide rate |
| Policies | Impact of governmental policies, lockdowns | Not applicable | Not applicable |
| Information | Awareness and diffusion of disease related information | Probability of infection, recovery rate, contact rates | Awareness parameter, effectiveness of community participation, rate of persuasion |
| Memory | Memory effects sustaining certain behaviors | Force of infection | Fading of awareness memory, rate of generating awareness memory |
| Caution | Behavioral response produced by perceived risk | Not specified | Not specified |
| Sexual behavior | Explicit sexual transmission pathway | Transmission rate | Time for viral clearance from fluids, sexual transmission rate |
| Irritability | Host or vector fatigue affecting transmission | Biting rate, feeding rate | Strength of irritability response, threshold density for irritability |

### 7.2 Modeling approach taxonomy

| Approach | Type | Description | Level of implementation | Example behavior represented |
|---|---|---|---|---|
| ODE | Deterministic | Average dynamics in the population | Population level | Use of repellents to reduce transmission |
| PDE | Deterministic | Structured dynamics across space, age, or duration | Population level plus spatial or structural terms | Spatial heterogeneity in transmission risk |
| FDE | Deterministic | Dynamics with long term memory | Population level plus memory | Transmission influenced by past exposure |
| ABM | Stochastic | Individual based stochastic interactions | Individual level | Individual decision making, risk perception |
| MC | Stochastic | Probabilistic state transitions | Population or individual level | Subpopulations with different forces of infection |
| Network | Stochastic | Structured, contact driven transmission | Population or individual level | Human or vector mobility between households |

## 8. Risk of Bias

A formal risk of bias tool, such as Cochrane RoB 2 or GRADE, was not applied. These instruments assess methodological rigor in empirical observational or interventional designs and are not applicable to theoretical or simulation based modeling studies. Instead, methodological transparency was addressed through the standardized extraction of modeling framework, methodological approach, behavioral mechanism, and data source for each study.

## 9. Data Synthesis

Data will be synthesized narratively, given the heterogeneity of modeling approaches, no quantitative meta analysis will be performed. Included studies will be classified by disease context, overall mathematical structure, specific modeling approach, and behavioral mechanism. A conceptual framework will be built by cross tabulating modeling approach against behavioral mechanism, to identify recurring pairings and underrepresented combinations.

## 10. PRISMA Summary

| Stage | n |
|---|---:|
| Records identified from databases | 2,003 |
| Records removed before screening | 1,867 |
| Records screened | 136 |
| Records excluded, duplicates or non vectorial transmission | 23 |
| Reports sought for retrieval | 113 |
| Reports not retrieved | 0 |
| Reports assessed for eligibility | 113 |
| Reports excluded, no explicit model or non vectorial transmission | 39 |
| Studies included in review | 62 |

## 11. Amendments

Any change made to this protocol after the review started will be logged here, with date, section, description, rationale, and commit reference.
