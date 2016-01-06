--liquibase formatted sql

--This is for the biodata schema
 
--changeset drsteini:bioshare
create database link bioshare.er.usgs.gov connect to bioshare_owner identified by "${bioshare_pwd}" using '${dwBioData}';
--rollback drop database link bioshare.er.usgs.gov;
