cd ../wk08Notes/
R CMD Sweave wk08Notes.Rnw
# R CMD Stangle wk08Notes
pdflatex wk08Notes
REM bibtex wk08Notes
pdflatex wk08Notes
pdflatex wk08Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk08Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk08Notes.R ../R/

move  wk08Notes.pdf wk08Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk08Notes.pdf wk08Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

