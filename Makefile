app.shell:
	docker compose exec php-fpm bash

start:
	docker compose up --detach --remove-orphans

stop:
	docker compose stop