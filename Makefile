all: alpine rockylinux8 centos7 centos6 bullseye buster stretch

.PHONY: centos6
alpine centos7 centos6 bullseye buster rockylinux8 stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-postgres:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack-postgres:$*
