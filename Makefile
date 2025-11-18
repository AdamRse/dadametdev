.PHONY: up down ng

up:
	docker compose up
down:
	docker compose down

ng:
	docker compose exec dadametdev ng $(filter-out $@,$(MAKECMDGOALS))
	@sudo chown -R $$USER:$$USER src/

%:
	@: