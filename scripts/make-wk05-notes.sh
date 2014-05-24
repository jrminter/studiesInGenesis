cd ../wk05Notes/
R CMD Sweave  wk05Notes.Rnw
# R CMD Stangle wk05Notes
pdflatex wk05Notes
# bibtex wk05Notes
pdflatex wk05Notes
pdflatex wk05Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk05Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk05Notes.R ../R/

mv  wk05Notes.pdf wk05Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk05Notes.pdf wk05Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
