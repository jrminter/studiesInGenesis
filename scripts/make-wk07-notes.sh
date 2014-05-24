cd ../wk07Notes/
R CMD Sweave  wk07Notes.Rnw
# R CMD Stangle wk07Notes
pdflatex wk07Notes
# bibtex wk07Notes
pdflatex wk07Notes
pdflatex wk07Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk07Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk07Notes.R ../R/

mv  wk07Notes.pdf wk07Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk07Notes.pdf wk07Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
