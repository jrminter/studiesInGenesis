cd ../wk07Notes/
R CMD Sweave wk07Notes.Rnw
# R CMD Stangle wk07Notes
pdflatex wk07Notes
REM bibtex wk07Notes
pdflatex wk07Notes
pdflatex wk07Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk07Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk07Notes.R ../R/

move  wk07Notes.pdf wk07Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk07Notes.pdf wk07Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

