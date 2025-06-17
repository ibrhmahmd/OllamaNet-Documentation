@echo off
echo Building LaTeX project...

echo First pdflatex pass...
pdflatex -interaction=nonstopmode main.tex

echo Running BibTeX...
bibtex main

echo Second pdflatex pass...
pdflatex -interaction=nonstopmode main.tex

echo Final pdflatex pass...
pdflatex -interaction=nonstopmode main.tex

echo Build complete!
echo PDF output is in main.pdf

pause 