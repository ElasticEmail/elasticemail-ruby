=begin
#Elastic Email REST API

#This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.    Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.    The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.    To start using this API, you will need your Access Token (available <a target=\"_blank\" href=\"https://app.elasticemail.com/marketing/settings/new/manage-api\">here</a>). Remember to keep it safe. Required access levels are listed in the given request’s description.    Downloadable library clients can be found in our Github repository <a target=\"_blank\" href=\"https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme\">here</a>

The version of the OpenAPI document: 4.0.0
Contact: support@elasticemail.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

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
    MODIFY2_FA_EMAIL = "Modify2FAEmail".freeze
    MODIFY_SUPPORT = "ModifySupport".freeze
    VIEW_CUSTOM_FIELDS = "ViewCustomFields".freeze
    MODIFY_CUSTOM_FIELDS = "ModifyCustomFields".freeze
    MODIFY_WEB_NOTIFICATIONS = "ModifyWebNotifications".freeze
    EXTENDED_LOGS = "ExtendedLogs".freeze
    VERIFY_EMAILS = "VerifyEmails".freeze
    MODIFY2_FA_SMS = "Modify2FASms".freeze
    MODIFY_LANDING_PAGES = "ModifyLandingPages".freeze
    VIEW_LANDING_PAGES = "ViewLandingPages".freeze
    MODIFY_SUPPRESSIONS = "ModifySuppressions".freeze
    VIEW_SUPPRESSIONS = "ViewSuppressions".freeze
    VIEW_DRAG_DROP_EDITOR = "ViewDragDropEditor".freeze
    VIEW_TEMPLATE_EDITOR = "ViewTemplateEditor".freeze
    VIEW_AI_TOOLS = "ViewAITools".freeze
    MODIFY_SUBSCRIPTION_ANTI_SPAM = "ModifySubscriptionAntiSpam".freeze
    VIEW_LANDING_PAGES_CHECKOUT = "ViewLandingPagesCheckout".freeze
    MODIFY_LANDING_PAGES_CHECKOUT = "ModifyLandingPagesCheckout".freeze
    VIEW_HTML_EDITOR = "ViewHTMLEditor".freeze
    MODIFY_ACCESS_TOKENS = "ModifyAccessTokens".freeze
    VIEW_PAID_NEWSLETTERS = "ViewPaidNewsletters".freeze
    MODIFY_PAID_NEWSLETTERS = "ModifyPaidNewsletters".freeze

    def self.all_vars
      @all_vars ||= [NONE, VIEW_ACCOUNT, VIEW_CONTACTS, VIEW_FORMS, VIEW_TEMPLATES, VIEW_CAMPAIGNS, VIEW_CHANNELS, VIEW_AUTOMATIONS, VIEW_SURVEYS, VIEW_SETTINGS, VIEW_BILLING, VIEW_SUB_ACCOUNTS, VIEW_USERS, VIEW_FILES, VIEW_REPORTS, MODIFY_ACCOUNT, MODIFY_CONTACTS, MODIFY_FORMS, MODIFY_TEMPLATES, MODIFY_CAMPAIGNS, MODIFY_CHANNELS, MODIFY_AUTOMATIONS, MODIFY_SURVEYS, MODIFY_FILES, EXPORT, SEND_SMTP, SEND_SMS, MODIFY_SETTINGS, MODIFY_BILLING, MODIFY_PROFILE, MODIFY_SUB_ACCOUNTS, MODIFY_USERS, SECURITY, MODIFY_LANGUAGE, VIEW_SUPPORT, SEND_HTTP, MODIFY2_FA_EMAIL, MODIFY_SUPPORT, VIEW_CUSTOM_FIELDS, MODIFY_CUSTOM_FIELDS, MODIFY_WEB_NOTIFICATIONS, EXTENDED_LOGS, VERIFY_EMAILS, MODIFY2_FA_SMS, MODIFY_LANDING_PAGES, VIEW_LANDING_PAGES, MODIFY_SUPPRESSIONS, VIEW_SUPPRESSIONS, VIEW_DRAG_DROP_EDITOR, VIEW_TEMPLATE_EDITOR, VIEW_AI_TOOLS, MODIFY_SUBSCRIPTION_ANTI_SPAM, VIEW_LANDING_PAGES_CHECKOUT, MODIFY_LANDING_PAGES_CHECKOUT, VIEW_HTML_EDITOR, MODIFY_ACCESS_TOKENS, VIEW_PAID_NEWSLETTERS, MODIFY_PAID_NEWSLETTERS].freeze
    end

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
      return value if AccessLevel.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AccessLevel"
    end
  end
end
