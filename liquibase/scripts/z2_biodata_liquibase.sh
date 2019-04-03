#!/bin/bash

# biodata schema scripts
${LIQUIBASE_HOME}/liquibase \
	--classpath=${LIQUIBASE_HOME}/lib/${JDBC_JAR} \
	--changeLogFile=${LIQUIBASE_WORKSPACE}/biodata/changeLog.yml \
	--driver=org.postgresql.Driver \
	--url=jdbc:postgresql://${BIODATA_DATABASE_ADDRESS}:5432/${BIODATA_DATABASE_NAME} \
	--username=${BIODATA_SCHEMA_OWNER_USERNAME} \
	--password=${BIODATA_SCHEMA_OWNER_PASSWORD} \
	--logLevel=debug \
	--liquibaseCatalogName=${BIODATA_SCHEMA_NAME} \
	--liquibaseSchemaName=${BIODATA_SCHEMA_NAME} \
	update \
	-DBIODATA_SCHEMA_OWNER_USERNAME=${BIODATA_SCHEMA_OWNER_USERNAME} \
	-DBIODATA_SCHEMA_NAME=${BIODATA_SCHEMA_NAME} \
	-DWQP_SCHEMA_OWNER_USERNAME=${WQP_SCHEMA_OWNER_USERNAME}
