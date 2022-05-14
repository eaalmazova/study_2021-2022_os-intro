FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))

LATEX_FORMAT =

FILTER = --filter pandoc-crossref

%.docx: %.md
	-pandoc "$<" $(FILTER) $(OPTIONS) -o "$@"

%.pdf: %.md
	-pandoc "$<" $(FILTER) $(Filter) -o "$@"

all: $(FILES)
	@echo $(Files)

clean:
	-rm $(FILES) *~
