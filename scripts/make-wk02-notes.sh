cd ../wk02Notes/
R CMD Sweave  wk02Notes.Rnw
# R CMD Stangle wk02Notes
pdflatex wk02Notes
# bibtex wk02Notes
pdflatex wk02Notes
pdflatex wk02Notes
rm -rf *.aux
rm -rf *.dvi
rm -rf *.log
rm -rf *.tex
rm -rf *.toc
rm -rf *.blg
rm -rf *.bbl
rm -rf *.brf
rm -rf *.lo*
rm -rf wk02Notes-*.*
rm -rf Rplots.pdf
rm -rf .Rhistory
# move /Y wk02Notes.R ../R/

mv  wk02Notes.pdf wk02Notes-uncomp.pdf
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=wk02Notes.pdf wk02Notes-uncomp.pdf
rm -rf *.out
rm -rf *.snm
rm -rf *.nav
rm -rf *-uncomp.pdf
 
read -p "Press [Enter] key to finish..."
