# Human Behavior and Disease Transmission: A Systematic Review of Behavioral Decision Dynamics in Vector-Borne Diseases

A repository for the protocol, search strategy, deduplication scripts, and data extraction registry from the systematic review “Human Behavior and Disease Transmission: A Systematic Review of Behavioral Decision Dynamics in Vector-Borne Diseases”, which identifies, classifies, and critically analyzes how human behavior has been formalized and incorporated into mathematical models of vector-borne disease transmission. The review develops a conceptual framework that organizes existing modeling literature according to both the mathematical approach used and the type of human behavior represented.

> Authors: **Santiago Villamil-Chacón**, **Juanita Prada-Mora** & **Mauricio Santos-Vega**.

This work covers:
+ A PRISMA 2020-compliant search and screening process across four databases (Web of Science, Scopus, Google Scholar, Science Direct).
+ A semantic taxonomy of ten human behavioral mechanisms (protection, vaccination, movement, control, policies, information, memory, caution, sexual behavior, irritability) represented in vector-borne disease models.
+ A classification of mathematical modeling approaches (ODE, PDE, FDE, ABM, network, Markov chain) used to formalize these behaviors.
+ Deduplication and data management scripts (R and Python) used during study selection.
+ A conceptual framework mapping behavioral mechanisms onto modeling approaches, highlighting recurring pairings and underrepresented combinations in the literature.

The review contributes to the understanding of how human behavior has been mathematically represented across the vector-borne disease modeling literature, providing a practical reference for researchers designing new models and identifying methodological gaps for future work, particularly the largely static treatment of behavioral parameters across current approaches.

## Repository contents
- `PROTOCOL.md` — full review protocol, including eligibility criteria, search strategy, data items, and taxonomies.
- `scripts/` — R and Python scripts used for deduplication and record management.
- `data/` — data extraction registry (structured fields per included study).
