TEX=pdflatex
BUILD_DIR=./build
TEX_DIR=./tex


book: $(BUILD_DIR)
	$(TEX) -output-directory $(BUILD_DIR) condensed_trigonometry.tex
	#compile it twice for the table of contents
	$(TEX) -output-directory $(BUILD_DIR) condensed_trigonometry.tex
	mv $(BUILD_DIR)/condensed_trigonometry.pdf ./


$(BUILD_DIR):
	mkdir $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)	
