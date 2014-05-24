cd ../wk10Notes/
R CMD Sweave wk10Notes.Rnw
# R CMD Stangle wk10Notes
pdflatex wk10Notes
REM bibtex wk10Notes
pdflatex wk10Notes
pdflatex wk10Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk10Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk10Notes.R ../R/

move  wk10Notes.pdf wk10Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk10Notes.pdf wk10Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

