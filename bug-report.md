# Adding a crossref to a table results in column alignment being ignored in docx output

Here's a test Quarto document

```rmarkdown
---
title: "Test table column alignment with cross reference"
format:
  docx:
    keep-md: true
  html:
    embed-resources: true
  pdf: default
engine: knitr
---

A test table with correct column alignment. Taken from [here](https://quarto.org/docs/authoring/tables.html#markdown-tables).

| Default | Left | Right | Center |
|---------|:-----|------:|:------:|
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax

Now I add @tbl-example, which has includes cross reference. In docx output the column alignment is not adhered to.

| Default | Left | Right | Center |
|---------|:-----|------:|:------:|
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax {#tbl-example}

Now I add @tbl-another, which includes the cross reference using the div syntax. Again in docx output the column alignment is not adhered to.

::: {#tbl-another}

| Default | Left | Right | Center |
|---------|:-----|------:|:------:|
| 12      | 12   |    12 |   12   |
| 123     | 123  |   123 |  123   |
| 1       | 1    |     1 |   1    |

: Demonstration of pipe table syntax

:::
```

The bug is that column alignments are ignored for tables 2 and 3 in docx output.

I am not 100% sure whether this a Quarto bug or a Pandoc bug. My guess is that it's a Quarto bug, since if I run the intermediate markdown file through pandoc, the tables use the specified column alignment. Also the column alignments are respected under both `pandoc-crossref` and `bookdown::word_document2()`.

If helpful, my test repo is <https://github.com/remlapmot/quarto-docx-tables-test>.
