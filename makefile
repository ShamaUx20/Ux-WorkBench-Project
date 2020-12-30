all: readme.md

readme.md: guessinggame.sh
	echo "# The Unix Workbench" > readme.md
	echo "## Peer graded project - the guessinggame" >> readme.md
	echo "#### The project makefile was run on $(date) " >> readme.md 
	date >> readme.md
	echo "#####the number of lines in the program guessinggame.sh -> " >> readme.md  
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
clean:
	rm readme.md

