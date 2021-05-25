=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://elasticemail.com/account#/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click <a target=\"_blank\" href=\"https://api.elasticemail.com/public/help\">here</a>.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module ElasticEmail
  class AccessLevel
    NONE = "None".freeze
    VIEW_ACCOUNT = "ViewAccount".freeze
    VIEW_CONTACTS = "ViewContacts".freeze
    VIEW_FORMS = "ViewForms".freeze
    VIEW_TEMPLATES = "ViewTemplates".freeze
    VIEW_CAMPAIGNS = "ViewCampaigns".freeze
    VIEW_CHANNELS = "ViewChannels".freeze
    VIEW_AUTOMATIONS = "ViewAutomations".freeze
    VIEW_SURVEYS = "ViewSurveys".freeze
    VIEW_SETTINGS = "ViewSettings".freeze
    VIEW_BILLING = "ViewBilling".freeze
    VIEW_SUB_ACCOUNTS = "ViewSubAccounts".freeze
    VIEW_USERS = "ViewUsers".freeze
    VIEW_FILES = "ViewFiles".freeze
    VIEW_REPORTS = "ViewReports".freeze
    MODIFY_ACCOUNT = "ModifyAccount".freeze
    MODIFY_CONTACTS = "ModifyContacts".freeze
    MODIFY_FORMS = "ModifyForms".freeze
    MODIFY_TEMPLATES = "ModifyTemplates".freeze
    MODIFY_CAMPAIGNS = "ModifyCampaigns".freeze
    MODIFY_CHANNELS = "ModifyChannels".freeze
    MODIFY_AUTOMATIONS = "ModifyAutomations".freeze
    MODIFY_SURVEYS = "ModifySurveys".freeze
    MODIFY_FILES = "ModifyFiles".freeze
    EXPORT = "Export".freeze
    SEND_SMTP = "SendSmtp".freeze
    SEND_SMS = "SendSMS".freeze
    MODIFY_SETTINGS = "ModifySettings".freeze
    MODIFY_BILLING = "ModifyBilling".freeze
    MODIFY_PROFILE = "ModifyProfile".freeze
    MODIFY_SUB_ACCOUNTS = "ModifySubAccounts".freeze
    MODIFY_USERS = "ModifyUsers".freeze
    SECURITY = "Security".freeze
    MODIFY_LANGUAGE = "ModifyLanguage".freeze
    VIEW_SUPPORT = "ViewSupport".freeze
    SEND_HTTP = "SendHttp".freeze
    MODIFY2_FA = "Modify2FA".freeze
    MODIFY_SUPPORT = "ModifySupport".freeze
    VIEW_CUSTOM_FIELDS = "ViewCustomFields".freeze
    MODIFY_CUSTOM_FIELDS = "ModifyCustomFields".freeze
    MODIFY_WEB_NOTIFICATIONS = "ModifyWebNotifications".freeze
    EXTENDED_LOGS = "ExtendedLogs".freeze
    VERIFY_EMAILS = "VerifyEmails".freeze
    VIEW_EMAIL_VERIFICATIONS = "ViewEmailVerifications".freeze
    VIEW_MARKETING = "ViewMarketing".freeze
    VIEW_EMAIL_API = "ViewEmailApi".freeze

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
      constantValues = AccessLevel.constants.select { |c| AccessLevel::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AccessLevel" if constantValues.empty?
      value
    end
  end
end
