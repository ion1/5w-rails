.PHONY : build
build :
	latexmk -silent -pdf 5w-rails.tex

.PHONY : clean
clean :
	latexmk -C
	$(RM) *.out *.pyg include/*.pyg

