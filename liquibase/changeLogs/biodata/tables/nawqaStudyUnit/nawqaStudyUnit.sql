create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.nawqa_study_unit
(nawqa_study_unit_id            numeric              not null
,suid                           character varying(4)    not null
,descr                          character varying(100)  not null
,start_year                     character varying(4)
,active_flag                    character varying(1)    not null
) with (fillfactor = 100);
