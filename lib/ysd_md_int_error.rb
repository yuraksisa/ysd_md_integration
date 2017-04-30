require 'data_mapper' unless defined?DataMapper
require 'ysd_md_audit'

module ExternalIntegration
  #
  # It represents data integration between systems
  #
  class Error
    include DataMapper::Resource
    
    storage_names[:default] = "int_errors"
    
    property :id, Serial

    property :source_system, String, length: 256, required: true
    property :source_entity, String, length: 256, required: true
    property :source_id, String, length: 256, required: true

    property :destination_system, String, length: 256, required: true
    property :destination_entity, String, length: 256, required: true
    
    property :message, Text


    include Audit::Auditor

    
  end #Error
end #ExternalIntegration