create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.taxonomic_result
(dw_taxonomic_result_id         numeric              not null
,taxonomic_result_id            numeric
,data_source                    text
,dw_project_id                  numeric
,dw_sample_id                   numeric
,dw_effort_id                   numeric
,review_status_code             character varying(40)
,taxon_id                       numeric
,lifestage                      text
,unique_taxon_flag              text
,target_level_not_reached_rsn   text
,subsampling_numerator          text
,subsampling_denominator        text
,artifact                       text
,bench_comment                  text
,identification_entity          text
,identification_date            timestamp(6)
,verification_entity            text
,verification_date              timestamp(6)
,raw_count                      numeric
,curation_entity                text
,curation_date                  timestamp(6)
,image_link                     text
,data_received_from_lab         timestamp(6)
,split_ratio                    numeric
,smcod                          text
,field_component                text
,lab_component                  text
,record_source                  text
,lab_procedure_name             text
,subsampling_ratio              numeric
,adjusted_raw_count             numeric
,abundance                      numeric
,density                        numeric
,seqnum                         numeric
,field_sheet_page               numeric
,field_sheet_line               numeric
,taxon_record_number            numeric
,id_location                    text
,total_length                   numeric
,standard_length                numeric
,weight                         numeric
,deformities                    text
,eroded_fins                    text
,lesions                        text
,tumors                         text
,voucher_count                  numeric
,minimum_length                 numeric
,maximum_length                 numeric
,anomaly_count                  numeric
,mortality_count                numeric
,photo_taken                    text
,flag                           text
,reaches_found                  text
,biovolume_per_cell             numeric
,biovolume_per_cell_method      text
,lab_order_id                   numeric
,lab_procedure_quantitative     character varying(1)
,lab_order_type                 character varying(1)
,voucher                        text
,validation_status              character varying(1)    not null
,data_release_category          character varying(40)   not null
,cells_cm2                      numeric
,cells_ml                       numeric
,biovolume_cm2                  numeric
,biovolume_ml                   numeric
,lab_record_id                  numeric
,biological_community           character varying(60)   not null
,normalized_cell_count          numeric
,adjusted_lab_count             numeric
,proportion_examined            numeric
,live_or_dead_diatom_count      numeric
,lab_sample_id                  text
,lab_taxon_id                   text
,identified_by                  text
,fish_comment                   text
,delt_count                     numeric
) with (fillfactor = 100);
