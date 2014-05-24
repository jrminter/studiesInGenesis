cd ../wk09Notes/
R CMD Sweave  wk09Notes.Rnw
# R CMD Stangle wk09Notes
pdflatex wk09Notes
# bibtex wk09Notes
pdflatex wk09Notes
pdflatex wk09Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk09Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk09Notes.R ../R/

mv  wk09Notes.pdf wk09Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk09Notes.pdf wk09Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
