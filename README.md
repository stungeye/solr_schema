discovery_data_processing
=========================

Blacklight can only handle MARC (binary and XML) natively. The best practice to handle other metadata schemas is seems to be to write wrapper scripts which will convert MODS/DC, etc, into solr XML records. This is also useful to add fields to the records before/as they get ingested (i.e. a source/collection field). Main metadata schemas to handle are:

* MARC/MARCXML
* MODS
* Dublin Core
* Qualified Dublin Core
* EAD

Further down the road, there may be a need for NAP/CSDGM, but YAGNI. 


NB: There's a trick to indexing our SFX e-journal records: they don't have a 001 field, which is used by SolrMarc for the record id. The trick is to change the config/SolrMarc/index.properties file to use the 090a field as the id. 090a contains the SFX object id.
