create table effort
(dw_effort_id                   number              not null
,effort_id                      number
,data_source                    varchar2(4000 char) not null
,dw_project_id                  number              not null
,dw_sample_id                   number              not null
,method_code                    varchar2(4000 char)
,gear                           varchar2(4000 char)
,beginning_time                 varchar2(4000 char)
,ending_time                    varchar2(4000 char)
,comments                       varchar2(4000 char)
,pass                           varchar2(4000 char)
,channel_coverage               varchar2(4000 char)
,direction_fished               varchar2(4000 char)
,model                          varchar2(4000 char)
,output_voltage                 number
,shock_time_rmk                 varchar2(4000 char)
,shock_time                     number
,seine_hauls                    number
,stationary_set_kicks           number
,snorkeling_transects           number
,netter_count                   number
,anode_count                    number
,anode_diameter                 number
,wave_form                      varchar2(4000 char)
,watts                          number
,pulse_rate                     number
,amps                           number
,pulse_width                    number
,total_fishing_time_rmk         varchar2(4000 char)
,total_fishing_time             number
,avg_subreach_length_rmk        varchar2(4000 char)
,avg_subreach_length            number
,subreach                       varchar2(4000 char)
,subreach_shock_time            number
,subreach_distance              number
,substrate                      varchar2(4000 char)
,cover                          varchar2(4000 char)
,depth                          varchar2(4000 char)
,bank                           varchar2(4000 char)
,biotdb_method_code             varchar2(4000 char)
,seine_mesh_size                number
,seine_length                   number
) parallel 4 compress pctfree 0 nologging;
