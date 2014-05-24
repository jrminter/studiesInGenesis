cd ../wk06Notes/
R CMD Sweave  wk06Notes.Rnw
# R CMD Stangle wk06Notes
pdflatex wk06Notes
# bibtex wk06Notes
pdflatex wk06Notes
pdflatex wk06Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk06Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk06Notes.R ../R/

mv  wk06Notes.pdf wk06Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk06Notes.pdf wk06Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
