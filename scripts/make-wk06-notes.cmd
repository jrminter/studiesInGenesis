cd ../wk06Notes/
R CMD Sweave wk06Notes.Rnw
# R CMD Stangle wk06Notes
pdflatex wk06Notes
REM bibtex wk06Notes
pdflatex wk06Notes
pdflatex wk06Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk06Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk06Notes.R ../R/

move  wk06Notes.pdf wk06Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk06Notes.pdf wk06Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

