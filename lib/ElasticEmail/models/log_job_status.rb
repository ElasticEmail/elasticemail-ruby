=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module ElasticEmail
  class LogJobStatus
    ALL = "All".freeze
    READY_TO_SEND = "ReadyToSend".freeze
    WAITING_TO_RETRY = "WaitingToRetry".freeze
    SENDING = "Sending".freeze
    ERROR = "Error".freeze
    SENT = "Sent".freeze
    OPENED = "Opened".freeze
    CLICKED = "Clicked".freeze
    UNSUBSCRIBED = "Unsubscribed".freeze
    ABUSE_REPORT = "AbuseReport".freeze

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
      constantValues = LogJobStatus.constants.select { |c| LogJobStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LogJobStatus" if constantValues.empty?
      value
    end
  end
end
