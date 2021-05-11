=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    To start using this API, you will need your Access Token (available <a href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a href=\"https://api.elasticemail.com/public/help\">here</a>.

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module ElasticEmail
  class ContactSource
    DELIVERY_API = "DeliveryApi".freeze
    MANUAL_INPUT = "ManualInput".freeze
    FILE_UPLOAD = "FileUpload".freeze
    WEB_FORM = "WebForm".freeze
    CONTACT_API = "ContactApi".freeze
    VERIFICATION_API = "VerificationApi".freeze
    FILE_VERIFICATION_API = "FileVerificationApi".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContactSource.constants.select { |c| ContactSource::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContactSource" if constantValues.empty?
      value
    end
  end
end
