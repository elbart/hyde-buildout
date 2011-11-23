.PHONY: build new run static tags

build: bootstrap.py \
        bin/buildout \
        bin/hyde

new:
	python bin/hyde -s source/ create

run:
	python bin/hyde -s source/ gen
	python bin/hyde -s source/ serve

gen:
	python bin/hyde -s source/ gen

bootstrap.py:
	wget http://svn.zope.org/repos/main/zc.buildout/trunk/bootstrap/bootstrap.py

bin/buildout:
	mkdir eggs downloads
	python bootstrap.py
        
bin/hyde: bin/buildout buildout.cfg
	bin/buildout -N
	touch $@

tags:
	bin/ctags -v
