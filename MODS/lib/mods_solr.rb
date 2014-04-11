require "mods"

class Mods::Record
  def to_solr

  # need to DRY multiple value fields (like genre)
 
  %Q[<doc>
     <field name="title">#{self.title_info.title.text}</field>
     <field name="personal_name">#{self.personal_names.first}</field>
     <field name="corporate_name">#{self.corporate_names.first}</field>
     <field name="resource_type">#{self.term_values(:typeOfResource).first}</field>
     <field name="genre">#{self.term_values(:genre).first}</field>
     <field name="genre">#{self.term_values(:genre)[1]}</field>
     <field name="place">#{self.term_values([:origin_info, 'place']).first}</field>
     <field name="publisher">#{self.term_values([:origin_info, 'publisher']).first}</field>
     <field name="date_issued>#{self.term_values([:origin_info, 'dateIssued']).first}</field>
     <field name="language">#{self.languages.first}</field>
     <field name="extent">#{self.term_values([:physical_description, 'extent']).first}</field>
     <field name="note">#{self.term_values(:note).first}</field>
     <field name="note">#{self.term_values(:note)[1]}</field>
     <field name="oaiset">#{self.term_values(:note)[2]}</field>
     <field name="sheets">#{self.term_values(:note)[3]}</field>
     <field name="size">#{self.term_values(:note)[4]}</field>
     <field name="length">#{self.term_values(:note)[5]}</field>
     <field name="width">#{self.term_values(:note)[6]}</field>
     <field name="topic">#{self.subject.topic.text}</field>
     <field name="geographic_subject">#{self.subject.geographic.text}</field>
     <field name="temporal_subject">#{self.subject.temporal.text}</field>
     <field name="coordinates">#{self.subject.cartographics.coordinates.text}</field>
     <field name="scale">#{self.subject.cartographics.scale.text}</field>
     <field name="classification">#{self.classification.text}</classification>
     <field name="maps_project_id">#{self.term_values(:identifier).first}</field>
     <field name="maps_db_id">#{self.term_values(:identifier)[1]}</field>
     <field name="maps_project_filename">#{self.term_values(:identifier)[2]}</field>
     <field name="peel3_id">#{self.term_values(:identifier)[3]}</field>
     <field name="peel_id">#{self.term_values(:identifier)[4]}</field>
     <field name="physical_location">#{self.term_values([:location, 'physicalLocation']).first}</field>
     <field name="url">#{self.term_values([:location, 'url']).first}</field>
     <field name="project">#{self.term_values([:record_info, "recordContentSource"]).first}</field>
     <field name="described_by">#{self.term_values([:record_info, "recordContentSource"])[1]}</field>
     <field name="id">#{self.record_info.recordIdentifier.text}</field>
     <field name="last_modified">#{self.record_info.recordChangeDate.text}</field>
     </doc>]
     #puts (self.note.type_at=~"oaiset")
  end
end
