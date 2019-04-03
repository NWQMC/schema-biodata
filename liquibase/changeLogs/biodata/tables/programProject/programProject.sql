create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.program_project
(program_project_id             numeric              not null
,code                           character varying(10)   not null
,descr                          character varying(100)  not null
) with (fillfactor = 100);
