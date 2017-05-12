create table nawqa_study_unit
(nawqa_study_unit_id            number              not null
,suid                           varchar2(4 char)    not null
,descr                          varchar2(100 char)  not null
,start_year                     varchar2(4 char)
,active_flag                    varchar2(1 char)    not null
) parallel 4 compress pctfree 0 nologging;
