---
title: "Test table column alignment with cross reference"
---

A test table with correct column alignment. Taken from [here](https://quarto.org/docs/authoring/tables.html#markdown-tables).

| Default | Left | Right | Center |
| ------- | :--- | ----: | :----: |
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax

Now I add @tbl:example, which has includes cross reference. In docx output the column alignment is not adhered to.

| Default | Left | Right | Center |
| ------- | :--- | ----: | :----: |
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax {#tbl:example}

Now I add @tbl:another, which includes the cross reference using the div syntax. Again in docx output the column alignment is not adhered to.

::: {#tbl:another}

| Default | Left | Right | Center |
| ------- | :--- | ----: | :----: |
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax

:::
