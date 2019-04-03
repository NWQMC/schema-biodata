create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.biodata_site
(biodata_site_id                numeric              not null
,agency_cd                      character varying(5)
,site_no                        character varying(15)
,nwis_host                      character varying(12)
,db_no                          character varying(2)
,station_nm                     character varying(50)
,dec_latitude                   numeric
,dec_longitude                  numeric
,latitude                       character varying(11)
,longitude                      character varying(12)
,site_web_cd                    character varying(1)
,coord_datum_cd                 character varying(10)
,huc_cd                         character varying(16)
,altitude                       character varying(8)
,alt_datum_cd                   character varying(10)
,drain_area_va                  character varying(8)
,state_cd                       character varying(2)
,state_name                     character varying(30)
,county_cd                      character varying(3)
,county_name                    character varying(48)
,country_cd                     character varying(2)
,site_type_cd                   character varying(7)
,site_type_long_name            character varying(40)
,tz_cd                          character varying(6)
,local_time_fg                  character varying(1)
,site_id                        numeric
,deleted_flag                   character varying(1)
,biotdb_only                    character varying(1)
,data_release_category          character varying(40)   not null
,geo_point                      geometry(point,4269)
,eco_na_l1_code                 character varying(30)
,eco_na_l2_code                 character varying(30)
,eco_na_l3_code                 character varying(30)
,eco_us_l3_code                 character varying(30)
,eco_us_l4_code                 character varying(30)
,created_date                   date
,flagged_delete_date            date
) with (fillfactor = 100);
