# NPC Emotional Response

A relational database model for tracking how player actions affect game characters. The schema includes players, NPCs, emotions, actions, interactions, and emotion history.

| File | Contents |
| --- | --- |
| [Database.txt](sql/Database.txt) | Table definitions, constraints, and indexes. |
| [queries.sql](sql/queries.sql) | Queries for NPC emotions, interactions, action frequency, and player impact. |
| [view.sql](sql/view.sql) | The `v_NPCEmotions` view. |
| [Phase II ERD](diagrams/phase-ii-erd.png) | Phase II database diagram. |
| [Final ERD](diagrams/final-erd.png) | Final database diagram. |

## Setup

Run `sql/Database.txt` in a SQL Server database to create the tables and indexes. The query and view scripts use this schema.
