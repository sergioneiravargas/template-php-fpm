.PHONY: up
up:
	@docker compose -f docker/docker-compose.yaml -f docker/docker-compose.local.yaml --env-file docker/.env up -d --remove-orphans

.PHONY: down
down:
	@docker compose -f docker/docker-compose.yaml -f docker/docker-compose.local.yaml --env-file docker/.env down