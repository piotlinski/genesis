build: ## Build docker image
	docker build -f Dockerfile -t genesis:latest .

docker_args ?= --gpus all --volume $(shell pwd):/app --volume $(shell pwd)/data:/app/data
shell: ## Run shell
	docker run -it --rm $(docker_args) genesis:latest

genesis_args ?=
run: ## Run model
	docker run --rm $(docker_args) genesis:latest $(genesis_args)
