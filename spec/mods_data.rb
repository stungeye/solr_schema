module ModsData

def mods_test_data
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

def test_mods_solr_record
"<doc><fieldname=\"titleInfo\">GeologicalmapoftheProvinceofAlberta,Canada</field><fieldname=\"name\">Allan,JohnA.</field><fieldname=\"name_1\">GeologicalSurveyDivision,ScientificandIndustrialResearchCouncilofAlberta</field><fieldname=\"typeOfResource\">cartographic</field><fieldname=\"genre\">map</field><fieldname=\"genre_1\">geologicalmap</field><fieldname=\"originInfo\">EdmontonScientificandIndustrialResearchCouncilofAlberta1926</field><fieldname=\"language\">English</field><fieldname=\"physicalDescription\">1map:blueline;66.5x37.3cm.onsheet73.7x44.1cm.</field><fieldname=\"note\">TakenfromGeologicalSurveyDivisionMapno.10.</field><fieldname=\"note_1\">Shadingsdifferentiatekindsoftertiary,mesozoic,palaeozoic,andprecambrianformations.</field><fieldname=\"note_2\">peelmaps</field><fieldname=\"note_3\">1</field><fieldname=\"note_4\">73.7x44.1cm.</field><fieldname=\"note_5\">73.7</field><fieldname=\"note_6\">44.1</field><fieldname=\"subject\">Physicalsciences</field><fieldname=\"subject_1\">Alberta</field><fieldname=\"subject_2\">1926</field><fieldname=\"subject_3\">w1200000/n0600000w1100000/n0600000w1100000/n0490000w1200000/n05410xx1:1,900,800</field><fieldname=\"classification\">AlbertaC-5:31</field><fieldname=\"identifier\">257</field><fieldname=\"identifier_1\">M000171</field><fieldname=\"identifier_2\">257.xml</field><fieldname=\"text\"></field><fieldname=\"identifier_3\">N018785</field><fieldname=\"location\">UACameronStaffAccess-Mapshttp://peel.library.ualberta.ca/maps/M/00/01/M000171/M000171.tif</field><fieldname=\"recordInfo\">mapsprojectsfarnelN0187852010-11-23T11:51:29-0700</field></doc>"
end
end

