create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.science_center
(science_center_id              numeric              not null
,name                           character varying(100)  not null
,office_type                    character varying(50)   not null
,discipline                     character varying(50)   not null
,usgs_region                    character varying(25)   not null
,city                           character varying(25)   not null
,state                          character varying(50)   not null
,biodata_user_id                numeric
) with (fillfactor = 100);
