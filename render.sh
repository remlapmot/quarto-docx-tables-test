#!/usr/bin/env bash
pandoc -o index_pandoc.docx index.docx.md

pandoc -F pandoc-crossref index-pandoc-crossref.md -o index-pandoc-crossref.docx
