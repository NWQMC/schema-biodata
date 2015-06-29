--liquibase formatted sql

--This is for the biodata schema
 
--changeset drsteini:1GrantsAA
grant select on biodata_site to wqp_core;
--rollback revoke select on biodata_site from wqp_core;
 
--changeset drsteini:1GrantsAB
grant select on effort to wqp_core;
--rollback revoke select on effort from wqp_core;
 
--changeset drsteini:1GrantsAC
grant select on nawqa_study_unit to wqp_core;
--rollback revoke select on nawqa_study_unit from wqp_core;
 
--changeset drsteini:1GrantsAD
grant select on program to wqp_core;
--rollback revoke select on program from wqp_core;
 
--changeset drsteini:1GrantsAE
grant select on program_project to wqp_core;
--rollback revoke select on program_project from wqp_core;
 
--changeset drsteini:1GrantsAF
grant select on project to wqp_core;
--rollback revoke select on project from wqp_core;
 
--changeset drsteini:1GrantsAG
grant select on reach to wqp_core;
--rollback revoke select on reach from wqp_core;
 
--changeset drsteini:1GrantsAH
grant select on sample to wqp_core;
--rollback revoke select on sample from wqp_core;
 
--changeset drsteini:1GrantsAI
grant select on sample_type to wqp_core;
--rollback revoke select on sample_type from wqp_core;
 
--changeset drsteini:1GrantsAJ
grant select on science_center to wqp_core;
--rollback revoke select on science_center from wqp_core;
 
--changeset drsteini:1GrantsAK
grant select on taxonomic_result to wqp_core;
--rollback revoke select on taxonomic_result from wqp_core;
 
--changeset drsteini:1GrantsAL
grant select on taxon_wide to wqp_core;
--rollback revoke select on taxon_wide from wqp_core;
