cd ../wk01Notes/
R CMD Sweave  wk01Notes.Rnw
# R CMD Stangle wk01Notes
pdflatex wk01Notes
bibtex wk01Notes
pdflatex wk01Notes
pdflatex wk01Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk01Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk01Notes.R ../R/

mv  wk01Notes.pdf wk01Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk01Notes.pdf wk01Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
