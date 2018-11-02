
DOCKER=docker
IMAGE=stevecassidy/tinker-python

latest:
	$(DOCKER) build -f Dockerfile -t $(IMAGE) .

no-cache:
	$(DOCKER) build --no-cache -f Dockerfile -t $(IMAGE) .

push:
	$(DOCKER) push $(IMAGE)

tag:
	if [ -n "$(TAG)" ] ; then $(DOCKER) tag $(IMAGE) $(IMAGE):$(TAG) ; fi
