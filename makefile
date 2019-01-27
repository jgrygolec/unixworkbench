DT:=$(shell date)
NUM:=$(shell wc -l guessinggame.sh | egrep -o "\d+")

README.md: guessinggame.sh
	echo "# Peer-graded assignment: Guessing Game" > README.md
	@echo "Makefile was run on **$(DT)**<br/>" >> README.md
	@echo "The number of lines in the file guessinggame.sh is **$(NUM)**" >> README.md

clean:
	rm README.md
