DC = docker-compose
ENV = --env-file .env
APP_FILE = docker/docker-compose.app.yaml
STORAGE_FILE = docker/docker-compose.storage.yaml
KAFKA_FILE = docker/docker-compose.kafka.yaml
APP_CONTAINER = web_app

.PHONY: app-start
app-start:
	$(DC) -f $(APP_FILE) -f $(STORAGE_FILE) -f $(KAFKA_FILE) $(ENV) up --build -d

.PHONY: app-down
app-down:
	$(DC) -f $(APP_FILE) -f $(STORAGE_FILE) -f $(KAFKA_FILE) $(ENV) down

.PHONY: app-logs
app-logs:
	$(DC) -f $(APP_FILE) logs -f

.PHONY: app-shell
app-shell:
	$(DC) exec $(APP_CONTAINER) bash