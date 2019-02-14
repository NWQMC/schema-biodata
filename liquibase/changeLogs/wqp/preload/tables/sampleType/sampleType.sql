create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.sample_type
(dw_sample_type_id              numeric              not null
,sample_definition_id           numeric
,protocol                       character varying(40)
,data_category_code             character varying(40)
,data_category_name             character varying(40)
,short_code                     character varying(40)
,version                        character varying(40)
,display_name                   text
,filter_display                 text
,filter_category                character varying(40)
,sort_order                     numeric
) with (fillfactor = 100);
