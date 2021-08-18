ASSETS = $(shell find ./source -name '*.svg' -exec basename -s '.svg' {} \;)

.PHONY: all
all: $(ASSETS)

.PHONY: $(ASSETS)
$(ASSETS): %: %.svg %.png %.jpg

%.svg: source/%.svg
	svgcleaner --allow-bigger-file --multipass $^ $@
	npm exec --yes -- svgo@latest --multipass --input $@ --output $@
	svgcleaner --allow-bigger-file --multipass $@ $@
	npm exec --yes -- svgo@latest --multipass --input $@ --output $@

%.png: %.svg
	inkscape --export-filename=$@ $^
	npm exec --yes -- @squoosh/cli --quant '{"enabled":true,"zx":0,"maxNumColors":32,"dither":1}' --oxipng '{"level":2,"interlace":false}' $@

%.jpg: %.svg
	convert $^ $@
	npm exec --yes -- @squoosh/cli --quant '{"enabled":true,"zx":0,"maxNumColors":32,"dither":1}' --mozjpeg '{"quality":80,"baseline":false,"arithmetic":false,"progressive":true,"optimize_coding":true,"smoothing":0,"color_space":3,"quant_table":3,"trellis_multipass":false,"trellis_opt_zero":false,"trellis_opt_table":false,"trellis_loops":1,"auto_subsample":true,"chroma_subsample":2,"separate_chroma_quality":false,"chroma_quality":75}' $@
	
.PHONY: clean
clean:
	rm -r $(foreach asset,$(ASSETS),$(asset).{svg,png,jpg})

