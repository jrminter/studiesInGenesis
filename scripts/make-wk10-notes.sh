cd ../wk10Notes/
R CMD Sweave  wk10Notes.Rnw
# R CMD Stangle wk10Notes
pdflatex wk10Notes
# bibtex wk10Notes
pdflatex wk10Notes
pdflatex wk10Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk10Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk10Notes.R ../R/

mv  wk10Notes.pdf wk10Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk10Notes.pdf wk10Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
