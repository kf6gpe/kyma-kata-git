
# Makefile
# 
# Converts Markdown to other formats (HTML, PDF, DOCX, RTF, ODT, EPUB) using Pandoc
# <http://johnmacfarlane.net/pandoc/>
#
# Run "make" (or "make all") to convert to all other formats
#
# Run "make clean" to delete converted files

# Convert all files in this directory that have a .md suffix
SOURCE_DOCS := presentation.md

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.html) \
 $(SOURCE_DOCS:.md=.pptx) \
 $(SOURCE_DOCS:.md=.pdf) 

RM=/bin/rm

PANDOC=/usr/local/bin/pandoc

PANDOC_OPTIONS=--standalone

PANDOC_HTML_OPTIONS=-t slidy
PANDOC_PDF_OPTIONS=-t beamer
PANDOC_PPTX_OPTIONS=-t pptx


# Pattern-matching Rules

%.html : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<

%.pdf : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_PDF_OPTIONS) -o $@ $<
	
%.pptx : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_PPTX_OPTIONS) -o $@ $<

# Targets and dependencies

.PHONY: all clean

all : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS)