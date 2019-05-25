all: paper zip

paper:
	@pandoc ./README.md -t html5 -o README.pdf

zip:
	@zip publish.zip README.pdf presentation.html
