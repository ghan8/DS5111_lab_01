default:
	cat makefile

synthetic_data.csv:
	wget -O synthetic_data.csv https://gist.github.com/Niarfe/25100a860cbb660150a3fec87378d8ac/raw/b280768fc7ad782c65f0e714017af2f05ba88ef2/synthetic_data.csv

square_wave.png:
	gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"

fibonachi.png: 
	gnuplot -e "set datafile separator ','; set term png; set output 'fibonachi.png'; plot 'synthetic_data.csv' using 1:3 with lines"

clean:
	rm -f *.png synthetic_data.csv

.PHONY: all_images

all_images: square_wave.png fibonachi.png
	
