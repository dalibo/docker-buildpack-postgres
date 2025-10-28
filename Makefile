all: alpine rockylinux8 centos7 bookworm bullseye

.PHONY: centos6
alpine centos7 trixie bookworm bullseye rockylinux10 rockylinux9 rockylinux8:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-postgres:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack-postgres:$*
