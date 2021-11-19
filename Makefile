VERSION ?= $(git describe --abbrev=0 --tags)
CI_BUILD_REF ?= $(shell git rev-parse --verify HEAD)
PROJECT_NAME = flask-hello-world
PYFILES = app
DOCKER_ID_USER = nhjiejan
CONTAINER_NAME = ${DOCKER_ID_USER}/${PROJECT_NAME}

clean:
	rm -rf .eggs/ build/ dist/ logs/ *.egg-info/
	-find . -name '__pycache__' -prune -exec rm -rf "{}" \;
	-find . -name '*.pyc' -delete

install:
	pip3 install -r requirements.txt

lint:
	flake8 ${PYFILES}

format:
	yapf -r -i ${PYFILES}

dk-build:
	docker build \
		-t  ${CONTAINER_NAME}:${CI_BUILD_REF} \
		-t  ${CONTAINER_NAME}:latest \
		--build-arg "commit=${CI_BUILD_REF}" \
		.

dk-run:
	docker run \
		-p 5000:5000 \
		-v $$(pwd):/opt/flask-hello-world/${PROJECT_NAME} \
		-d \
		${CONTAINER_NAME}:latest

dk-publish: dk-build
	docker push ${CONTAINER_NAME}:${CI_BUILD_REF}
