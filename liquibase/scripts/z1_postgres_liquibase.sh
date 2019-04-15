#!/bin/bash

# postgres to postgres db scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_BIODATA}/postgres/postgres/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${BIODATA_DATABASE_ADDRESS}:5432/postgres \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DBIODATA_DATABASE_NAME=${BIODATA_DATABASE_NAME} \
	-DBIODATA_DB_OWNER_USERNAME=${BIODATA_DB_OWNER_USERNAME} \
	-DBIODATA_DB_OWNER_PASSWORD=${BIODATA_DB_OWNER_PASSWORD} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME} \
	-DBIODATA_SCHEMA_OWNER_USERNAME=${BIODATA_SCHEMA_OWNER_USERNAME} \
	-DBIODATA_SCHEMA_OWNER_PASSWORD=${BIODATA_SCHEMA_OWNER_PASSWORD} \
	-DWQP_SCHEMA_NAME=${WQP_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME} \
	-DWQP_SCHEMA_OWNER_PASSWORD=${WQP_SCHEMA_OWNER_PASSWORD}

# postgres to wqp/biodata scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE_BIODATA}/postgres/biodata/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${BIODATA_DATABASE_ADDRESS}:5432/${BIODATA_DATABASE_NAME} \
	--username=postgres \
	--password=${POSTGRES_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=public \
	--liquibaseSchemaName=public \
	update \
	-DPOSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
	-DBIODATA_SCHEMA_OWNER_USERNAME=${BIODATA_SCHEMA_OWNER_USERNAME} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME}
