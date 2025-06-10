# Graduation Project Documentation

This repository contains a LaTeX template for BSc. project documentation at Kafr El-Sheikh University, Faculty of Computers and Information.

## Prerequisites

Before you can build the documentation, you need to have the following software installed:

1. A LaTeX distribution:
   - For Windows: [MiKTeX](https://miktex.org/download) or [TeX Live](https://tug.org/texlive/windows.html)


2. Required LaTeX Packages (most are included in full TeX distributions):
   - book (document class)
   - hyperref
   - graphicx
   - amsmath, amssymb
   - and others (will be automatically installed by MiKTeX/TeX Live when needed)

## Building the Documentation

### Using build.bat

1. Open Command Prompt in the project directory
2. Run the build script:
   ```bash
   build.bat
   ```

The script will:
1. Run pdflatex first pass
2. Process bibliography with BibTeX
3. Run pdflatex second pass
4. Run pdflatex final pass
5. Generate `main.pdf` in the project root directory

### Manual Build (All Platforms)

Run these commands in sequence:

```bash
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

## Project Structure

```
project/
├── Appendix/          # Appendix content
├── BibTeX/           # Bibliography files
├── Chapter01-05/     # Main chapters
│   └── figures/      # Chapter-specific figures
├── FrontMatter/      # Title, abstract, etc.
│   └── Figures/      # Front matter figures
├── LaTeX/            # LaTeX style and config
├── main.tex          # Main document
└── build.bat         # Build script
```
