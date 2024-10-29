DOCKER_COMPOSE = docker-compose

build:
	$(DOCKER_COMPOSE) build --no-cache

up:
	$(DOCKER_COMPOSE) up

down:
	$(DOCKER_COMPOSE) down

bundle-install:
	$(DOCKER_COMPOSE) run --rm web bundle install

bundle-add:
	$(DOCKER_COMPOSE) run --rm web bundle add $(filter-out $@,$(MAKECMDGOALS))

clear:
	docker ps -aq | xargs -r docker stop
	docker ps -aq | xargs -r docker rm
	docker volume ls -q | xargs -r docker volume rm
	docker images -q | xargs -r docker rmi

exec-rails:
	docker exec -it rails_container bash

exec-mysql:
	docker exec -it rails_mysql_container bash

inspect-rails:
	docker inspect rails_container

inspect-mysql:
	docker inspect rails_mysql_container

# mysql -h 127.0.0.1 -P 3306 -u user -p
rubocop:
	$(DOCKER_COMPOSE) run --rm web bundle exec rubocop -A

test:
	$(DOCKER_COMPOSE) run --rm web bundle exec rspec

db-create:
	$(DOCKER_COMPOSE) run --rm web bundle exec rails db:create

db-migrate:
	$(DOCKER_COMPOSE) run --rm web bundle exec rails db:migrate

db-setup:
	$(DOCKER_COMPOSE) run --rm web bundle exec rails db:setup
