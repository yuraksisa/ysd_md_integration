require 'data_mapper' unless defined?DataMapper

module ExternalIntegration
  #
  # It represents a file that is created in a background export process
  # -------------------------------------------------------------------
  #
  # As the process can be so long, it's done in background. When the process has finished a link will be
  # available to the user to download the result file
  #
  # It's an operation class managed by the background process
  #
  class BackgroundExportFile
    include DataMapper::Resource
    
    storage_names[:default] = "int_background_export_file"
    
    property :id, Serial

    property :name, String, length: 80
    property :description, Text
    property :notification_email, String, length: 80
    property :notify_by_email_on_finish, Boolean

    property :file_name, String, length: 80
    property :file_path, String, length: 256

    property :created_at, DateTime
    property :valid_until, DateTime

    property :url_path, String, length: 80
    property :content_type, String, length: 80

    property :status, Enum[:pending, :in_progress, :error, :done], :default => :pending
    property :number_of_records, Integer
    property :error_message, Text

    

  end
end    
