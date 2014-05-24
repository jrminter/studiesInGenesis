cd ../wk01Notes/
R CMD Sweave wk01Notes.Rnw
# R CMD Stangle wk01Notes
pdflatex wk01Notes
bibtex wk01Notes
pdflatex wk01Notes
pdflatex wk01Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk01Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk01Notes.R ../R/

move  wk01Notes.pdf wk01Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk01Notes.pdf wk01Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

