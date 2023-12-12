all:
	pdflatex 1-Vision.tex
	pdflatex 2-Requirements.tex
	pdflatex 3-UseCase.tex
	pdflatex 4-Design.tex
	pdflatex 5-TestPlan.tex
	pdflatex 6-ProjectPlan.tex
	pdflatex 7-UserManual.tex

clean: 
	rm -f *.aux
	rm -f *.fls
	rm -f *.fdb_latexmk
	rm -f *.log
	rm -f *.pdf
	rm -f *.gz
