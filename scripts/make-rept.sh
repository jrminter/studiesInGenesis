
cd ../Sweave/
R CMD Sweave  studiesInGenesis.Rnw
# R CMD Stangle studiesInGenesis
pdflatex studiesInGenesis
bibtex studiesInGenesis
pdflatex studiesInGenesis
pdflatex studiesInGenesis
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf studiesInGenesis-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y studiesInGenesis.R ../R/

mv  studiesInGenesis.pdf studiesInGenesis-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=studiesInGenesis.pdf studiesInGenesis-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
