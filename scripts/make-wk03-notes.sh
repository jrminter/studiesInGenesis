cd ../wk03Notes/
R CMD Sweave  wk03Notes.Rnw
# R CMD Stangle wk03Notes
pdflatex wk03Notes
# bibtex wk03Notes
pdflatex wk03Notes
pdflatex wk03Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk03Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk03Notes.R ../R/

mv  wk03Notes.pdf wk03Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk03Notes.pdf wk03Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
