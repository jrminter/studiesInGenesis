cd ../wk04Notes/
R CMD Sweave  wk04Notes.Rnw
# R CMD Stangle wk04Notes
pdflatex wk04Notes
# bibtex wk04Notes
pdflatex wk04Notes
pdflatex wk04Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk04Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk04Notes.R ../R/

mv  wk04Notes.pdf wk04Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk04Notes.pdf wk04Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
