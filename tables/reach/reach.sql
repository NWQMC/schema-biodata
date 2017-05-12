create table reach
(dw_reach_id                    number              not null
,reach_id                       number
,data_source                    varchar2(4000 char)
,dw_project_id                  number
,biodata_site_id                number
,name                           varchar2(4000 char)
,curvilinear_reach_length_m     number
,curvilinear_reach_length_rmk   varchar2(4000 char)
,description                    varchar2(4000 char)
,reference_location_description varchar2(4000 char)
,reference_location_latitude    number
,reference_location_longitude   number
,coordinate_source              varchar2(4000 char)
,location_coordinate_datum      varchar2(4000 char)
,upstream_boundary_m            number
,upstream_boundary_rmk          varchar2(4000 char)
,downstream_boundary_m          number
,downstream_boundary_rmk        varchar2(4000 char)
,upstream_boundary_latitude     number
,upstream_boundary_longitude    number
,upstream_coordinate_datum      varchar2(4000 char)
,upstream_marker_location       varchar2(4000 char)
,upstream_marker_description    varchar2(4000 char)
,downstream_boundary_latitude   number
,downstream_boundary_longitude  number
,downstream_coordinate_datum    varchar2(4000 char)
,downstream_marker_location     varchar2(4000 char)
,downstream_marker_description  varchar2(4000 char)
,notes                          varchar2(4000 char)
,delineation_date               timestamp(6)
,establishment_method           varchar2(4000 char)
,other_establishment_method     varchar2(4000 char)
,review_status_code             varchar2(40 char)
,validation_status              varchar2(1 char)    not null
,data_release_category          varchar2(40 char)   not null
) parallel 4 compress pctfree 0 nologging;
