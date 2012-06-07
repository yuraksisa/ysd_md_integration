module ExternalIntegration
  #
  # It represents an account to an external service
  #
  class ExternalServiceAccount
    include DataMapper::Resource
    
    storage_names[:default] = "int_extseraccount"
    
    property :id, String, :field => 'id', :length => 32, :key => true
    property :description, String, :field => 'description', :length => 256
    property :type, String, :field => 'type', :length => 15
    property :username, String, :field => 'username', :length => 32
    property :password, String, :field => 'password', :length => 32
    
  end #Account
end #Integration