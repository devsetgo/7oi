APP_VERSION = 2024-12-24

bump: ## Bump calver version
	bumpcalver

build: ## Build docker image
	hugo

docker-login:  # Login to docker hub
	docker login

docker-run:  # Run docker container
	docker run -p 5000:5000 7oi:$(APP_VERSION)

docker-build:  # Build docker image
	docker build --no-cache -t 7oi:$(APP_VERSION) -f docker/dockerfile .

docker-push:  # Push beta test image to docker hub
	docker tag 7oi:$(APP_VERSION) mikeryan56/7oi:$(APP_VERSION)
	docker push mikeryan56/7oi:$(APP_VERSION)
	docker tag 7oi:$(APP_VERSION) mikeryan56/7oi:latest
	docker push mikeryan56/7oi:latest

docker-all: docker-build docker-push 
