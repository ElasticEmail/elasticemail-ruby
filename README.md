# ElasticEmail

ElasticEmail - the Ruby gem for the Elastic Email REST API

This API is based on the REST API architecture, allowing the user to easily manage their data with this resource-based approach.

Every API call is established on which specific request type (GET, POST, PUT, DELETE) will be used.

The API has a limit of 20 concurrent connections and a hard timeout of 600 seconds per request.

To start using this API, you will need your Access Token (available [here](https://elasticemail.com/account#/settings/new/manage-api)). Remember to keep it safe. Required access levels are listed in the given request’s description.

This is the documentation for REST API. If you’d like to read our legacy documentation regarding Web API v2 click [here](https://api.elasticemail.com/public/help).

Downloadable library clients can be found in our Github repository [here](https://github.com/ElasticEmail?tab=repositories&q=%22rest+api%22+in%3Areadme)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 4.0.0
- Package version: 4.0.15
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ElasticEmail.gemspec
```

Then either install the gem locally:

```shell
gem install ./ElasticEmail-4.0.15.gem
```

(for development, run `gem install --dev ./ElasticEmail-4.0.15.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ElasticEmail', '~> 4.0.15'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/elasticemail/elasticemail-ruby, then add the following in the Gemfile:

    gem 'ElasticEmail', :git => 'https://github.com/elasticemail/elasticemail-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ElasticEmail'

# Setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ElasticEmail::CampaignsApi.new
name = 'name_example' # String | Name of Campaign to delete

begin
  #Delete Campaign
  api_instance.campaigns_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Exception when calling CampaignsApi->campaigns_by_name_delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.elasticemail.com/v4*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_delete**](docs/CampaignsApi.md#campaigns_by_name_delete) | **DELETE** /campaigns/{name} | Delete Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_get**](docs/CampaignsApi.md#campaigns_by_name_get) | **GET** /campaigns/{name} | Load Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_put**](docs/CampaignsApi.md#campaigns_by_name_put) | **PUT** /campaigns/{name} | Update Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_get**](docs/CampaignsApi.md#campaigns_get) | **GET** /campaigns | Load Campaigns
*ElasticEmail::CampaignsApi* | [**campaigns_post**](docs/CampaignsApi.md#campaigns_post) | **POST** /campaigns | Add Campaign
*ElasticEmail::ContactsApi* | [**contacts_by_email_delete**](docs/ContactsApi.md#contacts_by_email_delete) | **DELETE** /contacts/{email} | Delete Contact
*ElasticEmail::ContactsApi* | [**contacts_by_email_get**](docs/ContactsApi.md#contacts_by_email_get) | **GET** /contacts/{email} | Load Contact
*ElasticEmail::ContactsApi* | [**contacts_by_email_history_get**](docs/ContactsApi.md#contacts_by_email_history_get) | **GET** /contacts/{email}/history | Load History
*ElasticEmail::ContactsApi* | [**contacts_by_email_put**](docs/ContactsApi.md#contacts_by_email_put) | **PUT** /contacts/{email} | Update Contact
*ElasticEmail::ContactsApi* | [**contacts_delete_post**](docs/ContactsApi.md#contacts_delete_post) | **POST** /contacts/delete | Delete Contacts Bulk
*ElasticEmail::ContactsApi* | [**contacts_export_by_id_status_get**](docs/ContactsApi.md#contacts_export_by_id_status_get) | **GET** /contacts/export/{id}/status | Check Export Status
*ElasticEmail::ContactsApi* | [**contacts_export_post**](docs/ContactsApi.md#contacts_export_post) | **POST** /contacts/export | Export Contacts
*ElasticEmail::ContactsApi* | [**contacts_get**](docs/ContactsApi.md#contacts_get) | **GET** /contacts | Load Contacts
*ElasticEmail::ContactsApi* | [**contacts_import_post**](docs/ContactsApi.md#contacts_import_post) | **POST** /contacts/import | Upload Contacts
*ElasticEmail::ContactsApi* | [**contacts_post**](docs/ContactsApi.md#contacts_post) | **POST** /contacts | Add Contact
*ElasticEmail::EmailsApi* | [**emails_by_msgid_view_get**](docs/EmailsApi.md#emails_by_msgid_view_get) | **GET** /emails/{msgid}/view | View Email
*ElasticEmail::EmailsApi* | [**emails_mergefile_post**](docs/EmailsApi.md#emails_mergefile_post) | **POST** /emails/mergefile | Send Bulk Emails CSV
*ElasticEmail::EmailsApi* | [**emails_post**](docs/EmailsApi.md#emails_post) | **POST** /emails | Send Bulk Emails
*ElasticEmail::EmailsApi* | [**emails_transactional_post**](docs/EmailsApi.md#emails_transactional_post) | **POST** /emails/transactional | Send Transactional Email
*ElasticEmail::EventsApi* | [**events_by_transactionid_get**](docs/EventsApi.md#events_by_transactionid_get) | **GET** /events/{transactionid} | Load Email Events
*ElasticEmail::EventsApi* | [**events_channels_by_name_export_post**](docs/EventsApi.md#events_channels_by_name_export_post) | **POST** /events/channels/{name}/export | Export Channel Events
*ElasticEmail::EventsApi* | [**events_channels_by_name_get**](docs/EventsApi.md#events_channels_by_name_get) | **GET** /events/channels/{name} | Load Channel Events
*ElasticEmail::EventsApi* | [**events_channels_export_by_id_status_get**](docs/EventsApi.md#events_channels_export_by_id_status_get) | **GET** /events/channels/export/{id}/status | Check Channel Export Status
*ElasticEmail::EventsApi* | [**events_export_by_id_status_get**](docs/EventsApi.md#events_export_by_id_status_get) | **GET** /events/export/{id}/status | Check Export Status
*ElasticEmail::EventsApi* | [**events_export_post**](docs/EventsApi.md#events_export_post) | **POST** /events/export | Export Events
*ElasticEmail::EventsApi* | [**events_get**](docs/EventsApi.md#events_get) | **GET** /events | Load Events
*ElasticEmail::FilesApi* | [**files_by_name_delete**](docs/FilesApi.md#files_by_name_delete) | **DELETE** /files/{name} | Delete File
*ElasticEmail::FilesApi* | [**files_by_name_get**](docs/FilesApi.md#files_by_name_get) | **GET** /files/{name} | Download File
*ElasticEmail::FilesApi* | [**files_by_name_info_get**](docs/FilesApi.md#files_by_name_info_get) | **GET** /files/{name}/info | Load File Details
*ElasticEmail::FilesApi* | [**files_get**](docs/FilesApi.md#files_get) | **GET** /files | List Files
*ElasticEmail::FilesApi* | [**files_post**](docs/FilesApi.md#files_post) | **POST** /files | Upload File
*ElasticEmail::InboundRouteApi* | [**inboundroute_by_id_delete**](docs/InboundRouteApi.md#inboundroute_by_id_delete) | **DELETE** /inboundroute/{id} | Delete Route
*ElasticEmail::InboundRouteApi* | [**inboundroute_by_id_get**](docs/InboundRouteApi.md#inboundroute_by_id_get) | **GET** /inboundroute/{id} | Get Route
*ElasticEmail::InboundRouteApi* | [**inboundroute_by_id_put**](docs/InboundRouteApi.md#inboundroute_by_id_put) | **PUT** /inboundroute/{id} | Update Route
*ElasticEmail::InboundRouteApi* | [**inboundroute_get**](docs/InboundRouteApi.md#inboundroute_get) | **GET** /inboundroute | Get Routes
*ElasticEmail::InboundRouteApi* | [**inboundroute_order_put**](docs/InboundRouteApi.md#inboundroute_order_put) | **PUT** /inboundroute/order | Update Sorting
*ElasticEmail::InboundRouteApi* | [**inboundroute_post**](docs/InboundRouteApi.md#inboundroute_post) | **POST** /inboundroute | Create Route
*ElasticEmail::ListsApi* | [**lists_by_name_contacts_post**](docs/ListsApi.md#lists_by_name_contacts_post) | **POST** /lists/{name}/contacts | Add Contacts to List
*ElasticEmail::ListsApi* | [**lists_by_name_contacts_remove_post**](docs/ListsApi.md#lists_by_name_contacts_remove_post) | **POST** /lists/{name}/contacts/remove | Remove Contacts from List
*ElasticEmail::ListsApi* | [**lists_by_name_delete**](docs/ListsApi.md#lists_by_name_delete) | **DELETE** /lists/{name} | Delete List
*ElasticEmail::ListsApi* | [**lists_by_name_get**](docs/ListsApi.md#lists_by_name_get) | **GET** /lists/{name} | Load List
*ElasticEmail::ListsApi* | [**lists_by_name_put**](docs/ListsApi.md#lists_by_name_put) | **PUT** /lists/{name} | Update List
*ElasticEmail::ListsApi* | [**lists_get**](docs/ListsApi.md#lists_get) | **GET** /lists | Load Lists
*ElasticEmail::ListsApi* | [**lists_post**](docs/ListsApi.md#lists_post) | **POST** /lists | Add List
*ElasticEmail::SecurityApi* | [**security_apikeys_by_name_delete**](docs/SecurityApi.md#security_apikeys_by_name_delete) | **DELETE** /security/apikeys/{name} | Delete ApiKey
*ElasticEmail::SecurityApi* | [**security_apikeys_by_name_get**](docs/SecurityApi.md#security_apikeys_by_name_get) | **GET** /security/apikeys/{name} | Load ApiKey
*ElasticEmail::SecurityApi* | [**security_apikeys_by_name_put**](docs/SecurityApi.md#security_apikeys_by_name_put) | **PUT** /security/apikeys/{name} | Update ApiKey
*ElasticEmail::SecurityApi* | [**security_apikeys_get**](docs/SecurityApi.md#security_apikeys_get) | **GET** /security/apikeys | List ApiKeys
*ElasticEmail::SecurityApi* | [**security_apikeys_post**](docs/SecurityApi.md#security_apikeys_post) | **POST** /security/apikeys | Add ApiKey
*ElasticEmail::SecurityApi* | [**security_smtp_by_name_delete**](docs/SecurityApi.md#security_smtp_by_name_delete) | **DELETE** /security/smtp/{name} | Delete SMTP Credential
*ElasticEmail::SecurityApi* | [**security_smtp_by_name_get**](docs/SecurityApi.md#security_smtp_by_name_get) | **GET** /security/smtp/{name} | Load SMTP Credential
*ElasticEmail::SecurityApi* | [**security_smtp_by_name_put**](docs/SecurityApi.md#security_smtp_by_name_put) | **PUT** /security/smtp/{name} | Update SMTP Credential
*ElasticEmail::SecurityApi* | [**security_smtp_get**](docs/SecurityApi.md#security_smtp_get) | **GET** /security/smtp | List SMTP Credentials
*ElasticEmail::SecurityApi* | [**security_smtp_post**](docs/SecurityApi.md#security_smtp_post) | **POST** /security/smtp | Add SMTP Credential
*ElasticEmail::SegmentsApi* | [**segments_by_name_delete**](docs/SegmentsApi.md#segments_by_name_delete) | **DELETE** /segments/{name} | Delete Segment
*ElasticEmail::SegmentsApi* | [**segments_by_name_get**](docs/SegmentsApi.md#segments_by_name_get) | **GET** /segments/{name} | Load Segment
*ElasticEmail::SegmentsApi* | [**segments_by_name_put**](docs/SegmentsApi.md#segments_by_name_put) | **PUT** /segments/{name} | Update Segment
*ElasticEmail::SegmentsApi* | [**segments_get**](docs/SegmentsApi.md#segments_get) | **GET** /segments | Load Segments
*ElasticEmail::SegmentsApi* | [**segments_post**](docs/SegmentsApi.md#segments_post) | **POST** /segments | Add Segment
*ElasticEmail::StatisticsApi* | [**statistics_campaigns_by_name_get**](docs/StatisticsApi.md#statistics_campaigns_by_name_get) | **GET** /statistics/campaigns/{name} | Load Campaign Stats
*ElasticEmail::StatisticsApi* | [**statistics_campaigns_get**](docs/StatisticsApi.md#statistics_campaigns_get) | **GET** /statistics/campaigns | Load Campaigns Stats
*ElasticEmail::StatisticsApi* | [**statistics_channels_by_name_get**](docs/StatisticsApi.md#statistics_channels_by_name_get) | **GET** /statistics/channels/{name} | Load Channel Stats
*ElasticEmail::StatisticsApi* | [**statistics_channels_get**](docs/StatisticsApi.md#statistics_channels_get) | **GET** /statistics/channels | Load Channels Stats
*ElasticEmail::StatisticsApi* | [**statistics_get**](docs/StatisticsApi.md#statistics_get) | **GET** /statistics | Load Statistics
*ElasticEmail::SubAccountsApi* | [**subaccounts_by_email_credits_patch**](docs/SubAccountsApi.md#subaccounts_by_email_credits_patch) | **PATCH** /subaccounts/{email}/credits | Add, Subtract Email Credits
*ElasticEmail::SubAccountsApi* | [**subaccounts_by_email_delete**](docs/SubAccountsApi.md#subaccounts_by_email_delete) | **DELETE** /subaccounts/{email} | Delete SubAccount
*ElasticEmail::SubAccountsApi* | [**subaccounts_by_email_get**](docs/SubAccountsApi.md#subaccounts_by_email_get) | **GET** /subaccounts/{email} | Load SubAccount
*ElasticEmail::SubAccountsApi* | [**subaccounts_by_email_settings_email_put**](docs/SubAccountsApi.md#subaccounts_by_email_settings_email_put) | **PUT** /subaccounts/{email}/settings/email | Update SubAccount Email Settings
*ElasticEmail::SubAccountsApi* | [**subaccounts_get**](docs/SubAccountsApi.md#subaccounts_get) | **GET** /subaccounts | Load SubAccounts
*ElasticEmail::SubAccountsApi* | [**subaccounts_post**](docs/SubAccountsApi.md#subaccounts_post) | **POST** /subaccounts | Add SubAccount
*ElasticEmail::SuppressionsApi* | [**suppressions_bounces_get**](docs/SuppressionsApi.md#suppressions_bounces_get) | **GET** /suppressions/bounces | Get Bounce List
*ElasticEmail::SuppressionsApi* | [**suppressions_bounces_import_post**](docs/SuppressionsApi.md#suppressions_bounces_import_post) | **POST** /suppressions/bounces/import | Add Bounces Async
*ElasticEmail::SuppressionsApi* | [**suppressions_bounces_post**](docs/SuppressionsApi.md#suppressions_bounces_post) | **POST** /suppressions/bounces | Add Bounces
*ElasticEmail::SuppressionsApi* | [**suppressions_by_email_delete**](docs/SuppressionsApi.md#suppressions_by_email_delete) | **DELETE** /suppressions/{email} | Delete Suppression
*ElasticEmail::SuppressionsApi* | [**suppressions_by_email_get**](docs/SuppressionsApi.md#suppressions_by_email_get) | **GET** /suppressions/{email} | Get Suppression
*ElasticEmail::SuppressionsApi* | [**suppressions_complaints_get**](docs/SuppressionsApi.md#suppressions_complaints_get) | **GET** /suppressions/complaints | Get Complaints List
*ElasticEmail::SuppressionsApi* | [**suppressions_complaints_import_post**](docs/SuppressionsApi.md#suppressions_complaints_import_post) | **POST** /suppressions/complaints/import | Add Complaints Async
*ElasticEmail::SuppressionsApi* | [**suppressions_complaints_post**](docs/SuppressionsApi.md#suppressions_complaints_post) | **POST** /suppressions/complaints | Add Complaints
*ElasticEmail::SuppressionsApi* | [**suppressions_get**](docs/SuppressionsApi.md#suppressions_get) | **GET** /suppressions | Get Suppressions
*ElasticEmail::SuppressionsApi* | [**suppressions_unsubscribes_get**](docs/SuppressionsApi.md#suppressions_unsubscribes_get) | **GET** /suppressions/unsubscribes | Get Unsubscribes List
*ElasticEmail::SuppressionsApi* | [**suppressions_unsubscribes_import_post**](docs/SuppressionsApi.md#suppressions_unsubscribes_import_post) | **POST** /suppressions/unsubscribes/import | Add Unsubscribes Async
*ElasticEmail::SuppressionsApi* | [**suppressions_unsubscribes_post**](docs/SuppressionsApi.md#suppressions_unsubscribes_post) | **POST** /suppressions/unsubscribes | Add Unsubscribes
*ElasticEmail::TemplatesApi* | [**templates_by_name_delete**](docs/TemplatesApi.md#templates_by_name_delete) | **DELETE** /templates/{name} | Delete Template
*ElasticEmail::TemplatesApi* | [**templates_by_name_get**](docs/TemplatesApi.md#templates_by_name_get) | **GET** /templates/{name} | Load Template
*ElasticEmail::TemplatesApi* | [**templates_by_name_put**](docs/TemplatesApi.md#templates_by_name_put) | **PUT** /templates/{name} | Update Template
*ElasticEmail::TemplatesApi* | [**templates_get**](docs/TemplatesApi.md#templates_get) | **GET** /templates | Load Templates
*ElasticEmail::TemplatesApi* | [**templates_post**](docs/TemplatesApi.md#templates_post) | **POST** /templates | Add Template
*ElasticEmail::VerificationsApi* | [**verifications_by_email_delete**](docs/VerificationsApi.md#verifications_by_email_delete) | **DELETE** /verifications/{email} | Delete Email Verification Result
*ElasticEmail::VerificationsApi* | [**verifications_by_email_get**](docs/VerificationsApi.md#verifications_by_email_get) | **GET** /verifications/{email} | Get Email Verification Result
*ElasticEmail::VerificationsApi* | [**verifications_by_email_post**](docs/VerificationsApi.md#verifications_by_email_post) | **POST** /verifications/{email} | Verify Email
*ElasticEmail::VerificationsApi* | [**verifications_files_by_id_delete**](docs/VerificationsApi.md#verifications_files_by_id_delete) | **DELETE** /verifications/files/{id} | Delete File Verification Result
*ElasticEmail::VerificationsApi* | [**verifications_files_by_id_result_download_get**](docs/VerificationsApi.md#verifications_files_by_id_result_download_get) | **GET** /verifications/files/{id}/result/download | Download File Verification Result
*ElasticEmail::VerificationsApi* | [**verifications_files_by_id_result_get**](docs/VerificationsApi.md#verifications_files_by_id_result_get) | **GET** /verifications/files/{id}/result | Get Detailed File Verification Result
*ElasticEmail::VerificationsApi* | [**verifications_files_by_id_verification_post**](docs/VerificationsApi.md#verifications_files_by_id_verification_post) | **POST** /verifications/files/{id}/verification | Start verification
*ElasticEmail::VerificationsApi* | [**verifications_files_post**](docs/VerificationsApi.md#verifications_files_post) | **POST** /verifications/files | Upload File with Emails
*ElasticEmail::VerificationsApi* | [**verifications_files_result_get**](docs/VerificationsApi.md#verifications_files_result_get) | **GET** /verifications/files/result | Get Files Verification Results
*ElasticEmail::VerificationsApi* | [**verifications_get**](docs/VerificationsApi.md#verifications_get) | **GET** /verifications | Get Emails Verification Results


## Documentation for Models

 - [ElasticEmail::AccessLevel](docs/AccessLevel.md)
 - [ElasticEmail::AccountStatusEnum](docs/AccountStatusEnum.md)
 - [ElasticEmail::ApiKey](docs/ApiKey.md)
 - [ElasticEmail::ApiKeyPayload](docs/ApiKeyPayload.md)
 - [ElasticEmail::BodyContentType](docs/BodyContentType.md)
 - [ElasticEmail::BodyPart](docs/BodyPart.md)
 - [ElasticEmail::Campaign](docs/Campaign.md)
 - [ElasticEmail::CampaignOptions](docs/CampaignOptions.md)
 - [ElasticEmail::CampaignRecipient](docs/CampaignRecipient.md)
 - [ElasticEmail::CampaignStatus](docs/CampaignStatus.md)
 - [ElasticEmail::CampaignTemplate](docs/CampaignTemplate.md)
 - [ElasticEmail::ChannelLogStatusSummary](docs/ChannelLogStatusSummary.md)
 - [ElasticEmail::CompressionFormat](docs/CompressionFormat.md)
 - [ElasticEmail::ConsentData](docs/ConsentData.md)
 - [ElasticEmail::ConsentTracking](docs/ConsentTracking.md)
 - [ElasticEmail::Contact](docs/Contact.md)
 - [ElasticEmail::ContactActivity](docs/ContactActivity.md)
 - [ElasticEmail::ContactHistEventType](docs/ContactHistEventType.md)
 - [ElasticEmail::ContactHistory](docs/ContactHistory.md)
 - [ElasticEmail::ContactPayload](docs/ContactPayload.md)
 - [ElasticEmail::ContactSource](docs/ContactSource.md)
 - [ElasticEmail::ContactStatus](docs/ContactStatus.md)
 - [ElasticEmail::ContactUpdatePayload](docs/ContactUpdatePayload.md)
 - [ElasticEmail::ContactsList](docs/ContactsList.md)
 - [ElasticEmail::DeliveryOptimizationType](docs/DeliveryOptimizationType.md)
 - [ElasticEmail::EmailContent](docs/EmailContent.md)
 - [ElasticEmail::EmailData](docs/EmailData.md)
 - [ElasticEmail::EmailMessageData](docs/EmailMessageData.md)
 - [ElasticEmail::EmailRecipient](docs/EmailRecipient.md)
 - [ElasticEmail::EmailSend](docs/EmailSend.md)
 - [ElasticEmail::EmailStatus](docs/EmailStatus.md)
 - [ElasticEmail::EmailTransactionalMessageData](docs/EmailTransactionalMessageData.md)
 - [ElasticEmail::EmailValidationResult](docs/EmailValidationResult.md)
 - [ElasticEmail::EmailValidationStatus](docs/EmailValidationStatus.md)
 - [ElasticEmail::EmailView](docs/EmailView.md)
 - [ElasticEmail::EmailsPayload](docs/EmailsPayload.md)
 - [ElasticEmail::EncodingType](docs/EncodingType.md)
 - [ElasticEmail::EventType](docs/EventType.md)
 - [ElasticEmail::EventsOrderBy](docs/EventsOrderBy.md)
 - [ElasticEmail::ExportFileFormats](docs/ExportFileFormats.md)
 - [ElasticEmail::ExportLink](docs/ExportLink.md)
 - [ElasticEmail::ExportStatus](docs/ExportStatus.md)
 - [ElasticEmail::FileInfo](docs/FileInfo.md)
 - [ElasticEmail::FilePayload](docs/FilePayload.md)
 - [ElasticEmail::FileUploadResult](docs/FileUploadResult.md)
 - [ElasticEmail::InboundPayload](docs/InboundPayload.md)
 - [ElasticEmail::InboundRoute](docs/InboundRoute.md)
 - [ElasticEmail::InboundRouteActionType](docs/InboundRouteActionType.md)
 - [ElasticEmail::InboundRouteFilterType](docs/InboundRouteFilterType.md)
 - [ElasticEmail::ListPayload](docs/ListPayload.md)
 - [ElasticEmail::ListUpdatePayload](docs/ListUpdatePayload.md)
 - [ElasticEmail::LogJobStatus](docs/LogJobStatus.md)
 - [ElasticEmail::LogStatusSummary](docs/LogStatusSummary.md)
 - [ElasticEmail::MergeEmailPayload](docs/MergeEmailPayload.md)
 - [ElasticEmail::MessageAttachment](docs/MessageAttachment.md)
 - [ElasticEmail::MessageCategory](docs/MessageCategory.md)
 - [ElasticEmail::NewApiKey](docs/NewApiKey.md)
 - [ElasticEmail::NewSmtpCredentials](docs/NewSmtpCredentials.md)
 - [ElasticEmail::Options](docs/Options.md)
 - [ElasticEmail::RecipientEvent](docs/RecipientEvent.md)
 - [ElasticEmail::Segment](docs/Segment.md)
 - [ElasticEmail::SegmentPayload](docs/SegmentPayload.md)
 - [ElasticEmail::SmtpCredentials](docs/SmtpCredentials.md)
 - [ElasticEmail::SmtpCredentialsPayload](docs/SmtpCredentialsPayload.md)
 - [ElasticEmail::SortOrderItem](docs/SortOrderItem.md)
 - [ElasticEmail::SplitOptimizationType](docs/SplitOptimizationType.md)
 - [ElasticEmail::SplitOptions](docs/SplitOptions.md)
 - [ElasticEmail::SubAccountInfo](docs/SubAccountInfo.md)
 - [ElasticEmail::SubaccountEmailCreditsPayload](docs/SubaccountEmailCreditsPayload.md)
 - [ElasticEmail::SubaccountEmailSettings](docs/SubaccountEmailSettings.md)
 - [ElasticEmail::SubaccountEmailSettingsPayload](docs/SubaccountEmailSettingsPayload.md)
 - [ElasticEmail::SubaccountPayload](docs/SubaccountPayload.md)
 - [ElasticEmail::SubaccountSettingsInfo](docs/SubaccountSettingsInfo.md)
 - [ElasticEmail::SubaccountSettingsInfoPayload](docs/SubaccountSettingsInfoPayload.md)
 - [ElasticEmail::Suppression](docs/Suppression.md)
 - [ElasticEmail::Template](docs/Template.md)
 - [ElasticEmail::TemplatePayload](docs/TemplatePayload.md)
 - [ElasticEmail::TemplateScope](docs/TemplateScope.md)
 - [ElasticEmail::TemplateType](docs/TemplateType.md)
 - [ElasticEmail::TransactionalRecipient](docs/TransactionalRecipient.md)
 - [ElasticEmail::Utm](docs/Utm.md)
 - [ElasticEmail::VerificationFileResult](docs/VerificationFileResult.md)
 - [ElasticEmail::VerificationFileResultDetails](docs/VerificationFileResultDetails.md)
 - [ElasticEmail::VerificationStatus](docs/VerificationStatus.md)


## Documentation for Authorization


### apikey


- **Type**: API key
- **API key parameter name**: X-ElasticEmail-ApiKey
- **Location**: HTTP header

