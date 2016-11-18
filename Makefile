# see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/

NS = pyseminar
VERSION = latest
NAME = mydocker
REPO = pydocker
PORTS = -p 5000:5000
INSTANCE = default
VOLUMES = -v /tmp/docker:/var/log

build:
	docker build -t $(NS)/$(REPO):$(VERSION) .

run:
	#docker rm $(NAME)-$(INSTANCE) 
	docker run -d --name $(NAME)-$(INSTANCE) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO):$(VERSION)

shell: run
	docker exec -it $(NAME)-$(INSTANCE) /bin/sh

default: build
