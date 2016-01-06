--liquibase formatted sql

--This is for the biodata schema
 
--changeset drsteini:bioshare
create database link bioshare.er.usgs.gov connect to bioshare identified by "${bioshare_pwd}" using '${dwBioData}';
--rollback drop database link bioshare.er.usgs.gov;
 
--changeset drsteini:WQP_740_biostaging
create database link biostaging.er.usgs.gov connect to biostaging identified by "${biostaging_pwd}" using '${dwBioData}';
--rollback drop database link biostaging.er.usgs.gov;
