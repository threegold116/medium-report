# Makefile for the midterm report
METHOD = latexmk
LATEXMKOPTS = -xelatex
REPORTMAIN = report
HITHESIS_REPORT_DIR = hithesis/examples/hitart/reports
HITHESIS_FILES = \
	$(HITHESIS_REPORT_DIR)/hithesisart.cls \
	$(HITHESIS_REPORT_DIR)/hithesisart.cfg \
	$(HITHESIS_REPORT_DIR)/hithesis.bst

ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: report cls clean distclean

report: $(REPORTMAIN).pdf

$(REPORTMAIN).pdf: $(HITHESIS_FILES) $(REPORTMAIN).tex front/*.tex body/*.tex reference.bib
	$(METHOD) $(LATEXMKOPTS) $(REPORTMAIN)

$(HITHESIS_FILES):
	$(MAKE) -C hithesis cls

cls:
	$(MAKE) -C hithesis cls

clean:
	latexmk -c $(REPORTMAIN)
	-@$(RM) *.synctex.gz *.bbl *.blg *.run.xml *.bcf *.thm *.toe

distclean: clean
	-@$(RM) $(REPORTMAIN).pdf
