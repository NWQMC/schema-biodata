--liquibase formatted sql

--This is for the biodata schema

--changeset drsteini:1TablesAA
create table biodata_site
(biodata_site_id                number              not null
,agency_cd                      varchar2(5 char)
,site_no                        varchar2(15 char)
,nwis_host                      varchar2(12 char)
,db_no                          varchar2(2 char)
,station_nm                     varchar2(50 char)
,dec_latitude                   number
,dec_longitude                  number
,latitude                       varchar2(11 char)
,longitude                      varchar2(12 char)
,site_web_cd                    varchar2(1 char)
,coord_datum_cd                 varchar2(10 char)
,huc_cd                         varchar2(16 char)
,altitude                       varchar2(8 char)
,alt_datum_cd                   varchar2(10 char)
,drain_area_va                  varchar2(8 char)
,state_cd                       varchar2(2 char)
,state_name                     varchar2(30 char)
,county_cd                      varchar2(3 char)
,county_name                    varchar2(48 char)
,country_cd                     varchar2(2 char)
,site_type_cd                   varchar2(7 char)
,site_type_long_name            varchar2(40 char)
,tz_cd                          varchar2(6 char)
,local_time_fg                  varchar2(1 char)
,site_id                        number
,deleted_flag                   varchar2(1 char)
,biotdb_only                    varchar2(1 char)
,data_release_category          varchar2(40 char)   not null
,geo_point                      mdsys.sdo_geometry
,eco_na_l1_code                 varchar2(30 char)
,eco_na_l2_code                 varchar2(30 char)
,eco_na_l3_code                 varchar2(30 char)
,eco_us_l3_code                 varchar2(30 char)
,eco_us_l4_code                 varchar2(30 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table biodata_site cascade constraints purge;

--changeset drsteini:1TablesAB
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
--rollback drop table effort cascade constraints purge;

--changeset drsteini:1TablesAC
create table nawqa_study_unit
(nawqa_study_unit_id            number              not null
,suid                           varchar2(4 char)    not null
,descr                          varchar2(100 char)  not null
,start_year                     varchar2(4 char)
,active_flag                    varchar2(1 char)    not null
) parallel 4 compress pctfree 0 nologging;
--rollback drop table nawqa_study_unit cascade constraints purge;

--changeset drsteini:1TablesAD
create table program
(program_id                     number              not null
,code                           varchar2(10 char)   not null
,descr                          varchar2(100 char)  not null
) parallel 4 compress pctfree 0 nologging;
--rollback drop table program cascade constraints purge;

--changeset drsteini:1TablesAE
create table program_project
(program_project_id             number              not null
,code                           varchar2(10 char)   not null
,descr                          varchar2(100 char)  not null
) parallel 4 compress pctfree 0 nologging;
--rollback drop table program_project cascade constraints purge;

--changeset drsteini:1TablesAF
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
--rollback drop table project cascade constraints purge;

--changeset drsteini:1TablesAG
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
--rollback drop table reach cascade constraints purge;

--changeset drsteini:1TablesAH
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
--rollback drop table sample cascade constraints purge;

--changeset drsteini:1TablesAI
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
--rollback drop table sample_type cascade constraints purge;

--changeset drsteini:1TablesAJ
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
--rollback drop table science_center cascade constraints purge;

--changeset drsteini:1TablesAK
create table taxonomic_result
(dw_taxonomic_result_id         number              not null
,taxonomic_result_id            number
,data_source                    varchar2(4000 char)
,dw_project_id                  number
,dw_sample_id                   number
,dw_effort_id                   number
,review_status_code             varchar2(40 char)
,taxon_id                       number
,lifestage                      varchar2(4000 char)
,unique_taxon_flag              varchar2(4000 char)
,target_level_not_reached_rsn   varchar2(4000 char)
,subsampling_numerator          varchar2(4000 char)
,subsampling_denominator        varchar2(4000 char)
,artifact                       varchar2(4000 char)
,bench_comment                  varchar2(4000 char)
,identification_entity          varchar2(4000 char)
,identification_date            timestamp(6)
,verification_entity            varchar2(4000 char)
,verification_date              timestamp(6)
,raw_count                      number
,curation_entity                varchar2(4000 char)
,curation_date                  timestamp(6)
,image_link                     varchar2(4000 char)
,data_received_from_lab         timestamp(6)
,split_ratio                    number
,smcod                          varchar2(4000 char)
,field_component                varchar2(4000 char)
,lab_component                  varchar2(4000 char)
,record_source                  varchar2(4000 char)
,lab_procedure_name             varchar2(4000 char)
,subsampling_ratio              number
,adjusted_raw_count             number
,abundance                      number
,density                        number
,seqnum                         number
,field_sheet_page               number
,field_sheet_line               number
,taxon_record_number            number
,id_location                    varchar2(4000 char)
,total_length                   number
,standard_length                number
,weight                         number
,deformities                    varchar2(4000 char)
,eroded_fins                    varchar2(4000 char)
,lesions                        varchar2(4000 char)
,tumors                         varchar2(4000 char)
,voucher_count                  number
,minimum_length                 number
,maximum_length                 number
,anomaly_count                  number
,mortality_count                number
,photo_taken                    varchar2(4000 char)
,flag                           varchar2(4000 char)
,reaches_found                  varchar2(4000 char)
,biovolume_per_cell             number
,biovolume_per_cell_method      varchar2(4000 char)
,lab_order_id                   number
,lab_procedure_quantitative     varchar2(1 char)
,lab_order_type                 varchar2(1 char)
,voucher                        varchar2(4000 char)
,validation_status              varchar2(1 char)    not null
,data_release_category          varchar2(40 char)   not null
,cells_cm2                      number
,cells_ml                       number
,biovolume_cm2                  number
,biovolume_ml                   number
,lab_record_id                  number
,biological_community           varchar2(60 char)   not null
,normalized_cell_count          number
,adjusted_lab_count             number
,proportion_examined            number
,live_or_dead_diatom_count      number
,lab_sample_id                  varchar2(4000 char)
,lab_taxon_id                   varchar2(4000 char)
,identified_by                  varchar2(4000 char)
,fish_comment                   varchar2(4000 char)
,delt_count                     number
) parallel 4 compress pctfree 0 nologging;
--rollback drop table taxonomic_result cascade constraints purge;

--changeset drsteini:1TablesAL
create table taxon_wide
(bench_taxon_id                 number              not null
,biological_community           varchar2(20 char)
,algae_group                    nvarchar2(100)
,bench_taxon_name               nvarchar2(100)
,reference_code_id              number
,reference_code                 nvarchar2(100)
,concept_state                  varchar2(100 char)
,bench_taxon_provisional        varchar2(1 char)
,bench_taxon_hybrid             varchar2(1 char)
,bench_taxon_bu_id              nvarchar2(300)
,bench_taxon_nadedid            varchar2(100 char)
,biodata_taxon_id               number
,biodata_taxon_name             nvarchar2(100)
,biodata_common_name            nvarchar2(100)
,biodata_short_name             nvarchar2(100)
,biodata_taxon_provisional      varchar2(1 char)
,biodata_taxon_hybrid           varchar2(1 char)
,published_taxon_id             number
,published_sort_order           number
,published_taxon_level          varchar2(50 char)
,published_taxon_name           nvarchar2(100)
,published_taxon_authority      nvarchar2(150)
,itis_tsn                       varchar2(100 char)
,itis_match_code_id             number
,scientific_name                nvarchar2(200)
,phylum                         nvarchar2(100)
,subphylum                      nvarchar2(100)
,superclass                     nvarchar2(100)
,class_                         nvarchar2(100)
,subclass                       nvarchar2(100)
,infraclass                     nvarchar2(100)
,superorder                     nvarchar2(100)
,order_                         nvarchar2(100)
,suborder                       nvarchar2(100)
,infraorder                     nvarchar2(100)
,superfamily                    nvarchar2(100)
,family                         nvarchar2(100)
,subfamily                      nvarchar2(100)
,tribe                          nvarchar2(100)
,genus                          nvarchar2(100)
,subgenus                       nvarchar2(100)
,species                        nvarchar2(100)
,subspecies                     nvarchar2(100)
,variety                        nvarchar2(100)
,form_                          nvarchar2(100)
,taxon_version_id               number
,taxon_version_number           number
,production_date                timestamp(3)
,bench_authority                nvarchar2(150)
,itis_match_code                varchar2(100 char)
) parallel 4 compress pctfree 0 nologging;
--rollback drop table taxon_wide cascade constraints purge;
