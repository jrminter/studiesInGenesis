cd ../wk03Notes/
R CMD Sweave wk03Notes.Rnw
# R CMD Stangle wk03Notes
pdflatex wk03Notes
REM bibtex wk03Notes
pdflatex wk03Notes
pdflatex wk03Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk03Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk03Notes.R ../R/

move  wk03Notes.pdf wk03Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk03Notes.pdf wk03Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

