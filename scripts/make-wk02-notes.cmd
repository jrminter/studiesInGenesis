cd ../wk02Notes/
R CMD Sweave wk02Notes.Rnw
# R CMD Stangle wk02Notes
pdflatex wk02Notes
REM bibtex wk02Notes
pdflatex wk02Notes
pdflatex wk02Notes
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del wk02Notes-*.*
del Rplots.pdf
del .Rhistory
# move /Y wk02Notes.R ../R/

move  wk02Notes.pdf wk02Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk02Notes.pdf wk02Notes-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

