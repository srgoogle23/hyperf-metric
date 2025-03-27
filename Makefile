.PHONY: build
build:
	@docker-compose build hyperf-metric

.PHONY: install
install:
	@docker-compose run --rm hyperf-metric -c "composer install"

.PHONY: update
update:
	@docker-compose run --rm hyperf-metric -c "composer update"

.PHONY: test
test:
	@docker-compose run --rm hyperf-metric -c "composer test"

.PHONY: shell
shell:
	@docker-compose run --rm hyperf-metric
