APP_VERSION = 2024-11-09

bump: ## Bump calver version
	bumpcalver

build: ## Build docker image
	hugo

docker-login:  # Login to docker hub
	docker login

docker-run:  # Run docker container
	docker run -p 5000:5000 7oi:$(__version__)

docker-build:  # Build docker image
	docker build --no-cache -t 7oi:$(__version__) .

docker-push:  # Push beta test image to docker hub
	docker tag 7oi:$(__version__) mikeryan56/7oi:$(__version__)
	docker push mikeryan56/7oi:$(__version__)
	docker tag 7oi:$(__version__) mikeryan56/7oi:latest
	docker push mikeryan56/7oi:latest

docker-all: docker-build docker-push 
