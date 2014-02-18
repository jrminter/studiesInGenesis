
cd ../Sweave/
R CMD Sweave  studiesInGenesis
# R CMD Stangle studiesInGenesis
pdflatex studiesInGenesis
bibtex studiesInGenesis
pdflatex studiesInGenesis
pdflatex studiesInGenesis
del *.aux
del *.dvi
del *.log
del *.tex
del *.toc
del *.blg
del *.bbl
del *.brf
del *.lo*
del studiesInGenesis-*.*
del Rplots.pdf
del .Rhistory
# move /Y studiesInGenesis.R ../R/

move  studiesInGenesis.pdf studiesInGenesis-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=studiesInGenesis.pdf studiesInGenesis-uncomp.pdf
del *.out
del *.snm
del *.nav
del *-uncomp.pdf
 
pause

