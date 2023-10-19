SHELL := /bin/sh

default: build

clean:
	rm -f pdftk-aws-lambda.zip
	rm -rf ./bin

build: clean
	mkdir -p ./bin
	wget https://gitlab.com/api/v4/projects/5024297/packages/generic/pdftk-java/v3.3.3/pdftk -O bin/pdftk
	chmod +x ./bin/pdftk
	@zip -9 --filesync --recurse-paths pdftk-aws-lambda.zip bin/
