all: set install

set:
	chmod +x run.sh

install:
	npm link

clean:
	npm unlink 