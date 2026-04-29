WEB_DB_NAME = odoo_development
DOCKER = docker
DOCKER_COMPOSE = ${DOCKER} compose
CONTAINER_ODOO = odoo
CONTAINER_DB = odoo-postgres

help:
	@echo "Available targets:"
	@echo " start	   - Start the Odoo and PostgreSQL containers"
	@echo " stop	   - Stop the Odoo and PostgreSQL containers"
	@echo " restart   - Restart the Odoo and PostgreSQL containers"
	@echo " console - Access the Odoo container's shell"
	@echo " psql	   - Access the PostgreSQL database shell"
	@echo " logs odoo	   - View the logs of the Odoo container"
	@echo " logs db	   - View the logs of the PostgreSQL container"
	@echo " addon <addon_name> - Restart instance with specified addon"


start:
	${DOCKER_COMPOSE} up -d

stop:
	${DOCKER_COMPOSE} down

restart: 
	${DOCKER_COMPOSE} down
	${DOCKER_COMPOSE} up -d

console:
	${DOCKER} exec -it ${CONTAINER_ODOO} odoo shell --db_host=$(CONTAINER_DB) -d $(WEB_DB_NAME)
 -r $(CONTAINER_ODOO) -w $(CONTAINER_ODOO)
 
psql:
	${DOCKER} exec -it ${CONTAINER_DB} psql -U odoo -d ${WEB_DB_NAME}

logs-odoo:
	${DOCKER_COMPOSE} logs ${CONTAINER_ODOO}

logs-db:
	${DOCKER_COMPOSE} logs ${CONTAINER_DB}

