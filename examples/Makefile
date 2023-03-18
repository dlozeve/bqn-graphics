.PHONY: all
all: checkers.png random_pbm.png random_pgm.png random_ppm.png gradient.png hsv.png gcdgrid.png

%.pnm: %.bqn
	bqn $< > $@

%.png: %.pnm
	pnmtopng $< | convert - -scale 300x300 - > $@

.PHONY: clean
clean:
	rm -f *.png *.pnm
