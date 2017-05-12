create table sample
(dw_sample_id                  number               not null
,sample_id                     number
,data_source                   varchar2(4000 char)
,dw_project_id                 number
,sidno                         varchar2(4000 char)
,analysis_status_code          varchar2(4000 char)
,sample_label                  varchar2(4000 char)
,biodata_site_id               number
,dw_reach_id                   number
,collection_start              timestamp(6)
,sample_number                 number
,dw_sample_type_id             number
,review_status_code            varchar2(40 char)
,comments                      varchar2(4000 char)
,replicate_type                varchar2(4000 char)
,smcod                         varchar2(4000 char)
,study_reach_name              varchar2(4000 char)
,time_datum                    varchar2(4000 char)
,mesh_size_rmk                 varchar2(4000 char)
,mesh_size                     number
,total_area_sampled_rmk        varchar2(4000 char)
,total_area_sampled            number
,discrete_collections          number
,sampling_device_code          varchar2(4000 char)
,sampling_device_name          varchar2(4000 char)
,equal_sampling_effort_proc    varchar2(4000 char)
,equal_sampling_effort_detail  varchar2(4000 char)
,elutriation_method            varchar2(4000 char)
,sample_splitting_method       varchar2(4000 char)
,field_sorting                 varchar2(4000 char)
,geomorphic_channel_unit       varchar2(4000 char)
,channel_boundaries            varchar2(4000 char)
,channel_features              varchar2(4000 char)
,reach_length_fished_rmk       varchar2(4000 char)
,reach_length_fished           number
,water_visibility              varchar2(4000 char)
,water_temperature             number
,specific_conductivity         number
,nrsa_reaches_fished           varchar2(4000 char)
,nrsa_multiple_methods         varchar2(4000 char)
,gear_used                     varchar2(4000 char)
,targeted_habitat              varchar2(4000 char)
,periphyton_habitat_sampled    varchar2(4000 char)
,sampling_method               varchar2(4000 char)
,subsurface_grab_depth         number
,original_volume_rmk           varchar2(4000 char)
,original_volume               number
,number_transects_sampled      varchar2(4000 char)
,recog_habitat_epilithic       varchar2(4000 char)
,recog_habitat_epidendric      varchar2(4000 char)
,recog_habitat_epiphytic       varchar2(4000 char)
,recog_habitat_epipsammic      varchar2(4000 char)
,recog_habitat_epipelic        varchar2(4000 char)
,recog_habitat_other           varchar2(4000 char)
,periphyton_abundance_desc     varchar2(4000 char)
,recog_algae_taxa              varchar2(4000 char)
,validation_status             varchar2(1 char)     not null
,data_release_category         varchar2(40 char)    not null
,original_suid                 number
,sampling_method_reference     varchar2(4000 char)
,sampling_method_ref_citation  varchar2(4000 char)
,sampling_target               varchar2(4000 char)
,sampling_target_comments      varchar2(4000 char)
,block_net_physical_barrier_us varchar2(4000 char)
,block_net_physical_barrier_ds varchar2(4000 char)
,samplingapproach              varchar2(4000 char)
,samplerplacement              varchar2(4000 char)
,multihabitatsamplingapproach  varchar2(4000 char)
,multihabitatsamplingeffort    varchar2(4000 char)
,substratesampled              varchar2(4000 char)
,typicaldepthsampledarea_m     number
,artificsubstratedeploydate    varchar2(4000 char)
,artificsubstratedeploytime    varchar2(4000 char)
,artificsubstrateretrievedate  varchar2(4000 char)
,artificsubstrateretrievetime  varchar2(4000 char)
,artificsubstratenumdeploy     number
,artificsubstratenumretrieve   number
,artificsubstrtotaldaysdeploy  number
,artificsubstrtotalhoursdeploy number
) parallel 4 compress pctfree 0 nologging;
