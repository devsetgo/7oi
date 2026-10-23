APP_VERSION = 2024-12-24

bump: ## Bump calver version
	bumpcalver

docker-login:  # Login to docker hub
	docker login

docker-run:  # Run docker container at http://localhost:5000
	docker run --rm -p 5000:80 7oi:$(APP_VERSION)

docker-build:  # Build docker image
	docker build --pull --no-cache -t 7oi:$(APP_VERSION) -f docker/dockerfile .

docker-push:  # Push image to docker hub as the version and latest
	docker tag 7oi:$(APP_VERSION) mikeryan56/7oi:$(APP_VERSION)
	docker push mikeryan56/7oi:$(APP_VERSION)
	docker tag 7oi:$(APP_VERSION) mikeryan56/7oi:latest
	docker push mikeryan56/7oi:latest

release: docker-build docker-push  # Build the container and push it to docker hub
