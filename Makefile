all: alpine rockylinux8 centos7 centos6 bookworm bullseye buster

.PHONY: centos6
alpine centos7 centos6 trixie bookworm bullseye buster rockylinux9 rockylinux8:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-postgres:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack-postgres:$*
