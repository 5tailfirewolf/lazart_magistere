
.PHONY: clean all
 
all:
	pdflatex report.tex       # Génère le fichier .aux avec les citations
	biber report              # Traite les références (nécessite biber)
	pdflatex report.tex       # Intègre les références
	pdflatex report.tex       # Résout les références croisées


clean:
	rm -rf *.aux *.bcf *.log *.pdf report.run.xml *.out