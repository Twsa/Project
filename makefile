title=project
$title:README.md

README.md:guessinggame.sh
	touch README.md
	echo "# $(title)" >README.md
	echo "- $(shell date)">>README.md
	echo "- $(shell wc -l guessinggame.sh)">>README.md
clean:
	rm README.md
