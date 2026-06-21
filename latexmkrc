# vim: set ft=perl:
@default_files = ('report.tex');

$ENV{'TEXINPUTS'} = '.:./hithesis/examples/hitart/reports//:';
$ENV{'BIBINPUTS'} = '.:./hithesis/examples/hitart/reports//:';
$ENV{'BSTINPUTS'} = '.:./hithesis/examples/hitart/reports//:';

$pdf_mode = 1;
$bibtex_use = 2;
$recorder = 1;
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk fls glg glo gls idx ilg ind lof log lot out run.xml toc thm toe";
$pdflatex = "xelatex -file-line-error --shell-escape -src-specials -synctex=1 -interaction=nonstopmode %O %S";
$pdf_update_method = 0;
