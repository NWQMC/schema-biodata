create table program
(program_id                     number              not null
,code                           varchar2(10 char)   not null
,descr                          varchar2(100 char)  not null
) parallel 4 compress pctfree 0 nologging;
