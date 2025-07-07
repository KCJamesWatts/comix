app.shell:
	docker compose exec php-fpm bash

build:
	docker compose build

build.nocache:
	docker compose build --no-cache

down:
	docker compose down --remove-orphans

laravel.migrate:
	docker compose exec php-fpm php artisan migrate

laravel.migrate.fresh:
	docker compose exec php-fpm php artisan migrate:fresh --seed

laravel.pail:
	docker compose exec php-fpm php artisan pail

laravel.pint:
	docker compose exec php-fpm ./vendor/bin/pint

start: up migrate

stop:
	docker compose stop

up:
	docker compose up --detach --remove-orphans