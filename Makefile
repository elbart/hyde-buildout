.PHONY: build new run gen tags

build: bootstrap \
        bin/buildout

new:
	python bin/hyde -s src/ create

run:
	python bin/hyde -s src/ gen
	python bin/hyde -s src/ serve

gen:
	python bin/hyde -s src/ gen

bootstrap:
	wget http://svn.zope.org/repos/main/zc.buildout/trunk/bootstrap/bootstrap.py

bin/buildout:
	mkdir eggs downloads
	python bootstrap.py
	bin/buildout -vvN

tags:
	bin/ctags -v

clean:
	rm -rf .installed.cfg \
	.mr.developer.cfg \
	.project \
	.pydevproject \
	apps \
	bin \
	bootstrap.py \
	deploy \
	develop-eggs \
	downloads \
	eggs \
	parts \
	project \
	tags
