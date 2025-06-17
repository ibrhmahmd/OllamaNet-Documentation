#!/bin/bash

# Check if pdflatex is installed
if ! command -v pdflatex &> /dev/null; then
    echo "Error: pdflatex is not installed"
    echo "Please install TeX Live packages with:"
    echo "sudo apt-get update"
    echo "sudo apt-get install texlive texlive-latex-extra texlive-bibtex-extra"
    exit 1
fi

# Check if bibtex is installed
if ! command -v bibtex &> /dev/null; then
    echo "Error: bibtex is not installed"
    echo "Please install TeX Live packages with:"
    echo "sudo apt-get update"
    echo "sudo apt-get install texlive texlive-latex-extra texlive-bibtex-extra"
    exit 1
fi

echo "Building LaTeX project..."

echo "First pdflatex pass..."
pdflatex -interaction=nonstopmode main.tex

echo "Running BibTeX..."
bibtex main

echo "Second pdflatex pass..."
pdflatex -interaction=nonstopmode main.tex

echo "Final pdflatex pass..."
pdflatex -interaction=nonstopmode main.tex

echo "Build complete!"
echo "PDF output is in main.pdf"

# Uncomment the line below if you want the script to pause at the end
# read -p "Press Enter to continue..." 