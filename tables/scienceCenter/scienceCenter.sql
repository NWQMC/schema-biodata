create table science_center
(science_center_id              number              not null
,name                           varchar2(100 char)  not null
,office_type                    varchar2(50 char)   not null
,discipline                     varchar2(50 char)   not null
,usgs_region                    varchar2(25 char)   not null
,city                           varchar2(25 char)   not null
,state                          varchar2(50 char)   not null
,biodata_user_id                number
) parallel 4 compress pctfree 0 nologging;
