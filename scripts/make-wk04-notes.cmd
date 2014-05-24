cd ../wk04Notes/
R CMD Sweave wk04Notes.Rnw
# R CMD Stangle wk04Notes
pdflatex wk04Notes
REM bibtex wk04Notes
pdflatex wk04Notes
pdflatex wk04Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk04Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk04Notes.R ../R/

move  wk04Notes.pdf wk04Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk04Notes.pdf wk04Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

