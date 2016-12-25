#!/usr/bin/env bash
cd /Users/Taiki/Google\ Drive/Study/report
/Library/TeX/texbin/platex main.tex && /Library/TeX/texbin/dvipdfmx main.dvi
open main.pdf
