all: README.md

README.md: 
	echo "# Title: Guessing Game" > README.md
	echo "  " >> README.md
	date >> README.md
	echo "  " >> README.md
	<guessinggame.sh wc -l >> README.md
	echo "  " >> README.md
	
clean:
	rm README.md
	