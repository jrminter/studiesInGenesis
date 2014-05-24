cd ../wk09Notes/
R CMD Sweave wk09Notes.Rnw
# R CMD Stangle wk09Notes
pdflatex wk09Notes
REM bibtex wk09Notes
pdflatex wk09Notes
pdflatex wk09Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk09Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk09Notes.R ../R/

move  wk09Notes.pdf wk09Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk09Notes.pdf wk09Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

