create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.project
(dw_project_id                  numeric              not null
,project_id                     numeric
,data_source                    text
,project_name                   text
,project_label                  text
,science_center_id              numeric
,project_owner                  numeric
,project_abstract               text
,cooperator                     text
,program_id                     numeric
,nawqa_study_unit_id            numeric
,program_project_id             numeric
,nwql_proposal_number           text
,creation_date                  timestamp(6)
,external_id                    text
,review_status_code             character varying(40)
,validation_status              boolean    not null
,data_release_category          character varying(40)   not null
) with (fillfactor = 100);
