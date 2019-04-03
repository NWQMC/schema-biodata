create unlogged table if not exists ${BIODATA_SCHEMA_NAME}.taxon_wide
(bench_taxon_id                 numeric              not null
,biological_community           character varying(20)
,algae_group                    character varying(100)
,bench_taxon_name               character varying(100)
,reference_code_id              numeric
,reference_code                 character varying(100)
,concept_state                  character varying(100)
,bench_taxon_provisional        boolean
,bench_taxon_hybrid             boolean
,bench_taxon_bu_id              character varying(300)
,bench_taxon_nadedid            character varying(100)
,biodata_taxon_id               numeric
,biodata_taxon_name             character varying(100)
,biodata_common_name            character varying(100)
,biodata_short_name             character varying(100)
,biodata_taxon_provisional      boolean
,biodata_taxon_hybrid           boolean
,published_taxon_id             numeric
,published_sort_order           numeric
,published_taxon_level          character varying(50)
,published_taxon_name           character varying(100)
,published_taxon_authority      character varying(150)
,itis_tsn                       character varying(100)
,itis_match_code_id             numeric
,scientific_name                character varying(200)
,phylum                         character varying(100)
,subphylum                      character varying(100)
,superclass                     character varying(100)
,class_                         character varying(100)
,subclass                       character varying(100)
,infraclass                     character varying(100)
,superorder                     character varying(100)
,order_                         character varying(100)
,suborder                       character varying(100)
,infraorder                     character varying(100)
,superfamily                    character varying(100)
,family                         character varying(100)
,subfamily                      character varying(100)
,tribe                          character varying(100)
,genus                          character varying(100)
,subgenus                       character varying(100)
,species                        character varying(100)
,subspecies                     character varying(100)
,variety                        character varying(100)
,form_                          character varying(100)
,taxon_version_id               numeric
,taxon_version_number           numeric
,production_date                timestamp(3)
,bench_authority                character varying(150)
,itis_match_code                character varying(100)
) with (fillfactor = 100);
