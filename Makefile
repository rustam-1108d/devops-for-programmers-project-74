compose-setup:
	docker compose run --rm app make setup

compose-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-dev:
	docker compose up

ci: ensure-env compose-test

ensure-env:
	@test -f .env || cp .env.example .env
