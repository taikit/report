#!/usr/bin/env bash
export BSTINPUTS=$BSTINPUTS:/usr/share/texmf/jbibtex/bst
cd /Users/Taiki/Google\ Drive/Study/report
/Library/TeX/texbin/platex main &&\
/Library/TeX/texbin/bibtex main &&\
/Library/TeX/texbin/platex main &&\
/Library/TeX/texbin/dvipdfmx main.dvi
open main.pdf
