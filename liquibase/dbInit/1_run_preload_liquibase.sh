#!/bin/bash

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://BIODATA_Database:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DBIODATA_DATABASE_NAME=${BIODATA_DATABASE_NAME} \
	-DBIODATA_OWNER=${BIODATA_OWNER} \
	-DBIODATA_OWNER_PASSWORD=${BIODATA_OWNER_PASSWORD} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME} \
	-DWQP_CORE_OWNER=${WQP_CORE_OWNER} \
	-DWQP_CORE_OWNER_PASSWORD=${WQP_CORE_OWNER_PASSWORD} \
	 > $LIQUIBASE_HOME/logs/liquibasePostgres.log

# postgres to pubs db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/postgres/wqp/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://BIODATA_Database:5432/${BIODATA_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DBIODATA_OWNER=${BIODATA_OWNER} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME} \
	 > $LIQUIBASE_HOME/logs/liquibaseWQP.log

# remaining preload scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/wqp/preload/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://BIODATA_Database:5432/${BIODATA_DATABASE_NAME} \
	--username=${BIODATA_OWNER} \
	--password=${BIODATA_OWNER_PASSWORD} \
	--logLevel=debug \
	update \
	-DBIODATA_OWNER=${BIODATA_OWNER} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME} \
	-DWQP_CORE_OWNER=${WQP_CORE_OWNER} \
	 > $LIQUIBASE_HOME/logs/liquibasePreload.log