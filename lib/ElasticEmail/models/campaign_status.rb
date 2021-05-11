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
  class CampaignStatus
    DELETED = "Deleted".freeze
    ACTIVE = "Active".freeze
    PROCESSING = "Processing".freeze
    SENDING = "Sending".freeze
    COMPLETED = "Completed".freeze
    PAUSED = "Paused".freeze
    CANCELLED = "Cancelled".freeze
    DRAFT = "Draft".freeze

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
      constantValues = CampaignStatus.constants.select { |c| CampaignStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CampaignStatus" if constantValues.empty?
      value
    end
  end
end
