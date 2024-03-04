# Variables
DOCKER_COMPOSE = docker-compose

# Targets
.PHONY: build migrate run

# Build Docker image
build:
	$(DOCKER_COMPOSE) build

# Apply migrations
migrate:
	$(DOCKER_COMPOSE) run web python manage.py migrate

# Run Django development server
run:
	$(DOCKER_COMPOSE) up

# Stop and remove containers, networks, and volumes
clean:
	$(DOCKER_COMPOSE) down

# Shortcut for common setup tasks
setup: build migrate run

# Help target
help:
	@echo "Available targets:"
	@echo "  - build: Build the Docker image"
	@echo "  - migrate: Apply database migrations"
	@echo "  - run: Run the Django development server"
	@echo "  - clean: Stop and remove containers, networks, and volumes"
	@echo "  - setup: Build, migrate, and run (common setup tasks)"
	@echo "  - help: Show this help message"