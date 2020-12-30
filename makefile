all: readme.rmd

readme.rmd: guessinggame.sh
	echo "# The Unix Workbench" > readme.rmd
	echo "## Peer graded project - the guessinggame" >> readme.rmd
	echo "#### The project makefile was run on $(date)" >> readme.rmd 
	date >> readme.rmd
	echo "#####the number of lines in the program guessinggame.sh -> " >> readme.rmd  
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.rmd
clean:
	rm readme.rmd

