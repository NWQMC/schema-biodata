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
