up:
	docker compose up -d --build

down:
	docker compose down

composer:
	docker compose exec backend-laravel composer install --prefer-dist

ps:
	docker compose ps

migrations:
	docker compose exec backend-test php artisan migrate:fresh

remove-containers:
	docker compose rm -f $(docker ps -aq)