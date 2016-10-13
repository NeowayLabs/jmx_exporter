.PHONY: clean build

NAME      = jmx_prometheus_javaagent.jar
SOURCE    = https://github.com/prometheus/jmx_exporter
BUILDPATH = $(shell pwd)/.build

all: clean build

clean:
	rm -rf $(NAME)
	rm -rf $(BUILDPATH)

build:
	git clone $(SOURCE) $(BUILDPATH)
	docker run --rm -ti -v $(BUILDPATH):/usr/src/app maven:onbuild mvn package
	cp $(BUILDPATH)/jmx_prometheus_javaagent/target/jmx_prometheus_javaagent-*-SNAPSHOT.jar $(NAME)
