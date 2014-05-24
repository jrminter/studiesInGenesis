cd ../wk08Notes/
R CMD Sweave  wk08Notes.Rnw
# R CMD Stangle wk08Notes
pdflatex wk08Notes
# bibtex wk08Notes
pdflatex wk08Notes
pdflatex wk08Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk08Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk08Notes.R ../R/

mv  wk08Notes.pdf wk08Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk08Notes.pdf wk08Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
