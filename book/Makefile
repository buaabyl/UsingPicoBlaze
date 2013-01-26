PDFVIEWER = "C:\Program Files\Foxit Software\Foxit Phantom\Foxit Phantom.exe"

PART_READING = kc_interrupt.tex
PART_LM8GCC  = lm8_compare.tex

PART = $(PART_READING) $(PART_LM8GCC)

book.pdf:book.tex introduction.tex $(PART)
	pdflatex -shell-escape book.tex
	pdflatex -shell-escape book.tex

view:book.pdf
	 $(PDFVIEWER) book.pdf

clean:
	rm -rf book.pdf
	rm -rf *.out
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.toc
