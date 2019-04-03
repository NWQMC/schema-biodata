create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.effort
(dw_effort_id                   numeric              not null
,effort_id                      numeric
,data_source                    text not null
,dw_project_id                  numeric              not null
,dw_sample_id                   numeric              not null
,method_code                    text
,gear                           text
,beginning_time                 text
,ending_time                    text
,comments                       text
,pass                           text
,channel_coverage               text
,direction_fished               text
,model                          text
,output_voltage                 numeric
,shock_time_rmk                 text
,shock_time                     numeric
,seine_hauls                    numeric
,stationary_set_kicks           numeric
,snorkeling_transects           numeric
,netter_count                   numeric
,anode_count                    numeric
,anode_diameter                 numeric
,wave_form                      text
,watts                          numeric
,pulse_rate                     numeric
,amps                           numeric
,pulse_width                    numeric
,total_fishing_time_rmk         text
,total_fishing_time             numeric
,avg_subreach_length_rmk        text
,avg_subreach_length            numeric
,subreach                       text
,subreach_shock_time            numeric
,subreach_distance              numeric
,substrate                      text
,cover                          text
,depth                          text
,bank                           text
,biotdb_method_code             text
,seine_mesh_size                numeric
,seine_length                   numeric
) with (fillfactor = 100);
