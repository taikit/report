#!/usr/bin/env bash

ruby replace.rb abstract.tex
ruby replace.rb chapter1.tex
ruby replace.rb chapter2.tex
ruby replace.rb chapter3.tex
ruby replace.rb chapter4.tex
ruby replace.rb chapter5.tex
ruby replace.rb chapter6.tex
ruby replace.rb chapter7.tex
ruby replace.rb appendix.tex
ruby replace.rb reference.tex


export BSTINPUTS=$BSTINPUTS:/usr/share/texmf/jbibtex/bst
cd /Users/Taiki/Google\ Drive/Study/report
/Library/TeX/texbin/platex main &&\
/Library/TeX/texbin/dvipdfmx main.dvi
open main.pdf
