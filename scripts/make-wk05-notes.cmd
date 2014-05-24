cd ../wk05Notes/
R CMD Sweave wk05Notes.Rnw
# R CMD Stangle wk05Notes
pdflatex wk05Notes
REM bibtex wk05Notes
pdflatex wk05Notes
pdflatex wk05Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk05Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk05Notes.R ../R/

move  wk05Notes.pdf wk05Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk05Notes.pdf wk05Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

