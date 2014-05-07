module DublinCoreData

def test_data 
%q[<?xml version="1.0" encoding="UTF-8"?>
<OAI-PMH xmlns="http://www.openarchives.org/OAI/2.0/"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/
                             http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd">
  <responseDate>2013-02-26T04:09:59Z</responseDate>
  <request verb="ListRecords" metadataPrefix="oai_dc">http://era.library.ualberta.ca/oaiprovider/</request>
<ListRecords>
<record>
  <header>
    <identifier>oai:era.library.ualberta.ca:info:fedora/uuid:07732821-bf43-4a88-99cb-416b04fc0493</identifier>
    <datestamp>2012-11-20T22:07:36Z</datestamp>
    <setSpec>uuid:7af76c0f-61d6-4ebc-a2aa-79c125480269</setSpec>
  </header>
  <metadata>
<oai_dc:dc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xmlns:dc="http://purl.org/dc/elements/1.1/"
           xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/"
           xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd">
   <dc:creator>Swallow, Mathew J B</dc:creator>
   <dc:format>application/pdf</dc:format>
   <dc:language>eng</dc:language>
   <dc:subject>Boreal</dc:subject>
   <dc:subject>Forest</dc:subject>
   <dc:subject>bacteria</dc:subject>
   <dc:subject>fungi</dc:subject>
   <dc:subject>protist</dc:subject>
   <dc:subject>soil</dc:subject>
   <dc:subject>auxin</dc:subject>
   <dc:title>The ecology of boreal forest floor microbial communities in relation to environmental factors</dc:title>
   <dc:type>Thesis</dc:type>
   <publisher>University of Alberta</publisher>
   <rights>
Permission is hereby granted to the University of Alberta Libraries to reproduce single copies of this thesis and to lend or sell such copies for private, scholarly or scientific research purposes only. Where the thesis is converted to, or otherwise made available in digital form, the University of Alberta will advise potential users of the thesis of these terms.
The author reserves all other publication and other rights in association with the copyright in the thesis and, except as herein before provided, neither the thesis nor any substantial portion thereof may be printed or otherwise reproduced in any material form whatsoever without the author's prior written permission.
</rights>
</oai_dc:dc>
  </metadata>
</record>
</ListRecords>
</OAI-PMH>]
end

def test_solr_record
  %q[<doc>
     <field name="title">The ecology of boreal forest floor microbial communities in relation to environmental factors</field>
     <field name="creator">Swallow, Mathew J B</field>
     <field name="publisher">University of Alberta</field>
     <field name="type">Thesis</field>
     <field name="language">eng</field>
     <field name="subject">Boreal</field>
   <field name="subject">Forest</field>
   <field name="subject">bacteria</field>
   <field name="subject">fungi</field>
   <field name="subject">protist</field>
   <field name="subject">soil</field>
   <field name="subject">auxin</field>
     <field name="uuid">7af76c0f-61d6-4ebc-a2aa-79c125480269</field>
     <field name="format">application/pdf</field>
     <field name="rights">Permission is hereby granted to the University of Alberta Libraries to reproduce single copies of this thesis and to lend or sell such copies for private, scholarly or scientific research purposes only. Where the thesis is converted to, or otherwise made available in digital form, the University of Alberta will advise potential users of the thesis of these terms.
The author reserves all other publication and other rights in association with the copyright in the thesis and, except as herein before provided, neither the thesis nor any substantial portion thereof may be printed or otherwise reproduced in any material form whatsoever without the author's prior written permission.</field>
     </doc>]
   end
end
