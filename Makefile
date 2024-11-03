DC = docker-compose

build:
	$(DC) build

up:
	$(DC) up

down:
	$(DC) down

bundle-install:
	$(DC) run --rm web bundle install

bundle-add:
	$(DC) run --rm web bundle add $(filter-out $@,$(MAKECMDGOALS))

bundle-update:
	$(DC) run --rm web bundle update $(filter-out $@,$(MAKECMDGOALS))

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
lint:
	$(DC) run --rm web-lint sh -c "bundle exec rubocop -A && bundle exec erb_lint --lint-all"

rspec:
	$(DC) run --rm web-test bundle exec rspec

db-create:
	$(DC) run --rm web bundle exec rails db:create

db-migrate:
	$(DC) run --rm web bundle exec rails db:migrate

db-setup:
	$(DC) run --rm web bundle exec rails db:setup

migrate:
	$(DC) run --rm web bundle exec rails g migration $(filter-out $@,$(MAKECMDGOALS))