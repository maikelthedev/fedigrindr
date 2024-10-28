# Variables
MIX_ENV=prod
APP_NAME=fedigrindr
BUILD_DIR=_build
SERVER_USER=ubuntu
SECRET_KEY_BASE=$(shell mix phx.gen.secret)
ENV_FILE=.env
RELEASE_DIR=$(BUILD_DIR)/$(MIX_ENV)/rel/$(APP_NAME)
PHX_HOST="fedigrindr.maikeladas.es"
PORT=4002

.PHONY: all secret setup build release clean run deploy

# Default task
all: setup secret build release

# Generate secret
secret:
	@echo "==> Generating and exporting SECRET_KEY_BASE"
	@echo "SECRET_KEY_BASE=$(SECRET_KEY_BASE)" > .env

# Install necessary dependencies
setup:
	@echo "==> Installing dependencies"
	mix deps.get --only $(MIX_ENV)

# Build and compile the project
build:
	@echo "==> Building the project"
	MIX_ENV=$(MIX_ENV) mix compile
	@echo "==> Building assets"
	MIX_ENV=$(MIX_ENV) mix assets.deploy

# Create a release
release:
	@echo "==> Creating release"
	MIX_ENV=$(MIX_ENV) mix phx.gen.release
	MIX_ENV=$(MIX_ENV) mix release

# Run the server with environment variables from .env
run:
	@echo "==> Running the server with loaded environment variables"
	@if [ -f $(ENV_FILE) ]; then \
	  export $$(cat $(ENV_FILE) | xargs) && \
	  PHX_HOST=$(PHX_HOST) PORT=$(PORT) $(RELEASE_DIR)/bin/server start; \
	else \
	  echo "No .env file found! Please run 'make setup' first."; \
	fi

# Deploy the build to production
deploy:
	@echo "==> Deploying to production"
	ssh prod 'cd code/fedigrindr && git pull && make && _build/prod/rel/experiment/bin/experiment restart' 

# Clean build artifacts
clean:
	@echo "==> Cleaning build artifacts"
	rm -rf $(BUILD_DIR)
