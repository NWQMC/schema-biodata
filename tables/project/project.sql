create table project
(dw_project_id                  number              not null
,project_id                     number
,data_source                    varchar2(4000 char)
,project_name                   varchar2(4000 char)
,project_label                  varchar2(4000 char)
,science_center_id              number
,project_owner                  number
,project_abstract               varchar2(4000 char)
,cooperator                     varchar2(4000 char)
,program_id                     number
,nawqa_study_unit_id            number
,program_project_id             number
,nwql_proposal_number           varchar2(4000 char)
,creation_date                  timestamp(6)
,external_id                    varchar2(4000 char)
,review_status_code             varchar2(40 char)
,validation_status              varchar2(1 char)    not null
,data_release_category          varchar2(40 char)   not null
) parallel 4 compress pctfree 0 nologging;
