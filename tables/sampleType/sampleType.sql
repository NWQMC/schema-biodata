create table sample_type
(dw_sample_type_id              number              not null
,sample_definition_id           number
,protocol                       varchar2(40 char)
,data_category_code             varchar2(40 char)
,data_category_name             varchar2(40 char)
,short_code                     varchar2(40 char)
,version                        varchar2(40 char)
,display_name                   varchar2(4000 char)
,filter_display                 varchar2(4000 char)
,filter_category                varchar2(40 char)
,sort_order                     number
) parallel 4 compress pctfree 0 nologging;
