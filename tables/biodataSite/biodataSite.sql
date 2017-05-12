create table biodata_site
(biodata_site_id                number              not null
,agency_cd                      varchar2(5 char)
,site_no                        varchar2(15 char)
,nwis_host                      varchar2(12 char)
,db_no                          varchar2(2 char)
,station_nm                     varchar2(50 char)
,dec_latitude                   number
,dec_longitude                  number
,latitude                       varchar2(11 char)
,longitude                      varchar2(12 char)
,site_web_cd                    varchar2(1 char)
,coord_datum_cd                 varchar2(10 char)
,huc_cd                         varchar2(16 char)
,altitude                       varchar2(8 char)
,alt_datum_cd                   varchar2(10 char)
,drain_area_va                  varchar2(8 char)
,state_cd                       varchar2(2 char)
,state_name                     varchar2(30 char)
,county_cd                      varchar2(3 char)
,county_name                    varchar2(48 char)
,country_cd                     varchar2(2 char)
,site_type_cd                   varchar2(7 char)
,site_type_long_name            varchar2(40 char)
,tz_cd                          varchar2(6 char)
,local_time_fg                  varchar2(1 char)
,site_id                        number
,deleted_flag                   varchar2(1 char)
,biotdb_only                    varchar2(1 char)
,data_release_category          varchar2(40 char)   not null
,geo_point                      mdsys.sdo_geometry
,eco_na_l1_code                 varchar2(30 char)
,eco_na_l2_code                 varchar2(30 char)
,eco_na_l3_code                 varchar2(30 char)
,eco_us_l3_code                 varchar2(30 char)
,eco_us_l4_code                 varchar2(30 char)
,created_date                   date
,flagged_delete_date            date
) parallel 4 compress pctfree 0 nologging;
