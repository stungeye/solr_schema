discovery_data_processing
=========================

It looks as though Blacklight can still handle only MARC (binary and XML) natively. If this is the case, best practice seems to be to write wrapper scripts which will convert MODS/DC, etc, into solr XML records. There's already a Blacklight test data repository, and this is the repository for the data scripts. There's a trick to indexing our SFX e-journal records: they don't have a 001 field, which is used by SolrMarc for the record id. The trick is to change the config/SolrMarc/index.properties file to use the 090a field as the id. 090a contains the SFX object id.
