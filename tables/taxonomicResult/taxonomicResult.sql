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
