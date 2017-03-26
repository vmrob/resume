OBJ=obj
PDF=resume.pdf

resume: $(PDF)

$(PDF): resume.tex
	mkdir -p $(OBJ)
	latex -output-format=pdf -interaction=batchmode -output-directory=$(OBJ) $<
	mv $(OBJ)/$(PDF) .

clean:
	rm -rf obj
	rm resume.pdf
