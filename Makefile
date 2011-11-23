.PHONY: build new run gen tags

build: bootstrap \
        bin/buildout \
        bin/hyde

new:
	python bin/hyde -s source/ create

run:
	python bin/hyde -s source/ gen
	python bin/hyde -s source/ serve

gen:
	python bin/hyde -s source/ gen

bootstrap:
	wget http://svn.zope.org/repos/main/zc.buildout/trunk/bootstrap/bootstrap.py

bin/buildout:
	mkdir eggs downloads
	python bootstrap.py

tags:
	bin/ctags -v
