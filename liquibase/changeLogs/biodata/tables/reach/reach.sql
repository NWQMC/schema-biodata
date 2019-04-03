create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.reach
(dw_reach_id                    numeric              not null
,reach_id                       numeric
,data_source                    text
,dw_project_id                  numeric
,biodata_site_id                numeric
,name                           text
,curvilinear_reach_length_m     numeric
,curvilinear_reach_length_rmk   text
,description                    text
,reference_location_description text
,reference_location_latitude    numeric
,reference_location_longitude   numeric
,coordinate_source              text
,location_coordinate_datum      text
,upstream_boundary_m            numeric
,upstream_boundary_rmk          text
,downstream_boundary_m          numeric
,downstream_boundary_rmk        text
,upstream_boundary_latitude     numeric
,upstream_boundary_longitude    numeric
,upstream_coordinate_datum      text
,upstream_marker_location       text
,upstream_marker_description    text
,downstream_boundary_latitude   numeric
,downstream_boundary_longitude  numeric
,downstream_coordinate_datum    text
,downstream_marker_location     text
,downstream_marker_description  text
,notes                          text
,delineation_date               timestamp(6)
,establishment_method           text
,other_establishment_method     text
,review_status_code             character varying(40)
,validation_status              character varying(1)    not null
,data_release_category          character varying(40)   not null
) with (fillfactor = 100);
