module ModsData

def test_data
%q[<?xml version="1.0" encoding="UTF-8"?>
<mods xmlns="http://www.loc.gov/mods/v3" version="3.3">
<titleInfo>
<title>Geological map of the Province of Alberta, Canada</title>
</titleInfo>
<name type="personal">
<namePart>Allan, John A.</namePart>
</name>
<name type="corporate">
<namePart>Geological Survey Division, Scientific and Industrial Research Council of Alberta</namePart>
</name>
<typeOfResource>cartographic</typeOfResource>
<genre authority="marcgt">map</genre>
<genre>geological map</genre>
<originInfo>
<place>
<placeTerm type="text">Edmonton</placeTerm>
</place>
<publisher>Scientific and Industrial Research Council of Alberta</publisher>
<dateIssued>1926</dateIssued>
</originInfo>
<language>
<languageTerm type="text">English</languageTerm>
</language>
<physicalDescription>
<form/>
<extent>1 map : blueline ; 66.5 x 37.3 cm. on sheet 73.7 x 44.1 cm.</extent>
</physicalDescription>
<note type="public">Taken from Geological Survey Division Map no. 10.</note>
<note type="public">Shadings differentiate kinds of tertiary, mesozoic, palaeozoic, and precambrian formations.</note>
<note type="local:oaiset">peelmaps</note>
<note type="local:sheetcount">1</note>
<note type="local:sheetsize">73.7 x 44.1 cm.</note>
<note type="local:sheetlength">73.7</note>
<note type="local:sheetwidth">44.1</note>
<subject authority="lcsh">
				<topic>Physical sciences</topic>
			</subject>
<subject authority="lcsh">
				<geographic>Alberta</geographic>
			</subject>
<subject>
				<temporal>1926</temporal>
			</subject>
<subject>
				<cartographics>
					<coordinates>w1200000/n0600000			w1100000/n0600000			w1100000/n0490000			w1200000/n05410xx</coordinates>
				<scale>1:1,900,800</scale>
</cartographics>
			</subject>
<classification>Alberta C-5:31</classification>
<identifier type="local:mapsproject">257</identifier>
<identifier type="local:mapsdb">AAA-0302</identifier>
<identifier type="local:mapsproject_filename">257.xml</identifier>

                
                <identifier type="local:peel3">M000171</identifier>
                <identifier type="local:old_peel_new">N018785</identifier>
                
            <location>
<physicalLocation>UA Cameron Staff Access-Maps</physicalLocation>
<url access="raw object" note="width='4942' height='8653'">http://peel.library.ualberta.ca/maps/M/00/01/M000171/M000171.tif</url>
</location>
<recordInfo>
<recordContentSource authority="local:project">mapsproject</recordContentSource>
<recordContentSource authority="local:person">sfarnel</recordContentSource>
<recordIdentifier>N018785</recordIdentifier>
<recordChangeDate>2010-11-23T11:51:29-0700</recordChangeDate>
</recordInfo>
</mods>]
  end

def test_solr_record
  %q[<doc>
     <field name="title">Geological map of the Province of Alberta, Canada</field>
     <field name="personal_name">Allan, John A.</field>
     <field name="corporate_name">Geological Survey Division, Scientific and Industrial Research Council of Alberta</field>
     <field name="resource_type">cartographic</field>
     <field name="genre">map</field>
     <field name="genre">geological map</field>
     <field name="place">Edmonton</field>
     <field name="publisher">Scientific and Industrial Research Council of Alberta</field>
     <field name="date_issued>1926</field>
     <field name="language">English</field>
     <field name="extent">1 map : blueline ; 66.5 x 37.3 cm. on sheet 73.7 x 44.1 cm.</field>
     <field name="note">Taken from Geological Survey Division Map no. 10.</field>
     <field name="note">Shadings differentiate kinds of tertiary, mesozoic, palaeozoic, and precambrian formations.</field>
     <field name="oaiset">peelmaps</field>
     <field name="sheets">1</field>
     <field name="size">73.7 x 44.1 cm.</field>
     <field name="length">73.7</field>
     <field name="width">44.1</field>
     <field name="topic">Physical sciences</field>
     <field name="geographic_subject">Alberta</field>
     <field name="temporal_subject">1926</field>
     <field name="coordinates">w1200000/n0600000  w1100000/n0600000  w1100000/n0490000  w1200000/n05410xx</field>
     <field name="scale">1:1,900,800</field>
     <field name="classification">Alberta C-5:31</classification>
     <field name="maps_project_id">257</field>
     <field name="maps_db_id">AAA-0302</field>
     <field name="maps_project_filename">257.xml</field>
     <field name="peel3_id">M000171</field>
     <field name="peel_id">N018785</field>
     <field name="physical_location">UA Cameron Staff Access-Maps</field>
     <field name="url">http://peel.library.ualberta.ca/maps/M/00/01/M000171/M000171.tif</field>
     <field name="project">mapsproject</field>
     <field name="described_by">sfarnel</field>
     <field name="id">N018785</field>
     <field name="last_modified">2010-11-23T11:51:29-0700</field>
     </doc>]

end
end

