OUT_DIR=_out/
MEDIA_GEN_DIR=media-gen/

.PHONY: all mkdir clean media-gen

all: media-gen mkdir $(OUT_DIR)/index.pdf

$(OUT_DIR)/index.pdf: index.tex
	pdflatex -interaction=nonstopmode -output-directory "$(OUT_DIR)" "$<"

media-gen:
	cd $(MEDIA_GEN_DIR) && make

mkdir:
	mkdir -p $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR)
	cd $(MEDIA_GEN_DIR) && make clean
