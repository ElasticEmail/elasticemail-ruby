<div align="center">

<img src=".github/ee-logo.png" alt="Elastic Email" width="96" />

# Elastic Email Ruby SDK

The official Ruby client library for the [Elastic Email](https://elasticemail.com) REST API v4.

[![RubyGems](https://img.shields.io/gem/v/ElasticEmail?logo=rubygems&logoColor=white&label=RubyGems&color=E9573F)](https://rubygems.org/gems/ElasticEmail)
[![RubyGems downloads](https://img.shields.io/gem/dt/ElasticEmail?logo=rubygems&logoColor=white&label=downloads&color=E9573F)](https://rubygems.org/gems/ElasticEmail)
[![Ruby](https://img.shields.io/badge/Ruby-2.7%2B-CC342D?logo=ruby&logoColor=white)](https://www.ruby-lang.org/en/downloads/branches/)
[![API](https://img.shields.io/badge/API-v4-0A7BBB)](https://elasticemail.com/developers/api-documentation/rest-api)
[![OpenAPI Generator](https://img.shields.io/badge/generated%20by-OpenAPI%20Generator-6BA539?logo=openapiinitiative&logoColor=white)](https://openapi-generator.tech)
[![License: MIT](https://img.shields.io/github/license/ElasticEmail/elasticemail-ruby?color=yellow)](LICENSE)

[![Latest release](https://img.shields.io/github/v/release/ElasticEmail/elasticemail-ruby?logo=github&label=release)](https://github.com/ElasticEmail/elasticemail-ruby/releases)
[![Last commit](https://img.shields.io/github/last-commit/ElasticEmail/elasticemail-ruby?logo=github)](https://github.com/ElasticEmail/elasticemail-ruby/commits/master)
[![Open issues](https://img.shields.io/github/issues/ElasticEmail/elasticemail-ruby?logo=github)](https://github.com/ElasticEmail/elasticemail-ruby/issues)
[![GitHub stars](https://img.shields.io/github/stars/ElasticEmail/elasticemail-ruby?style=flat&logo=github)](https://github.com/ElasticEmail/elasticemail-ruby/stargazers)

[Installation](#installation) •
[Quick start](#quick-start) •
[Examples](#more-examples) •
[API reference](#api-reference) •
[Models](#models) •
[Contributing](#contributing)

</div>

---

## Features

- **Transactional and bulk email.** Send single messages, bulk campaigns or CSV merge-file sends.
- **Safe retries.** Pass an optional `Idempotency-Key` to a send, so a retried request returns the first result instead of sending the email twice.
- **Contacts, lists and segments.** Add, update, import, export and bulk-delete contacts.
- **Campaigns and automations.** Create, update, pause and trigger automations for a contact.
- **Templates, files and attachments.** Manage templates and uploaded files.
- **Domains.** Verify sending domains and check SPF, DKIM, tracking and certificate status.
- **Webhooks and inbound routes.** Receive delivery events, optionally signed with HMAC-SHA256 and sent as JSON, and route incoming mail.
- **Statistics, events and suppressions.** Track delivery, bounces, complaints and unsubscribes.
- **Subaccounts and security.** Manage subaccounts and API keys.
- **Plain Ruby objects.** Models are built from keyword hashes with snake_case keys, and every call has a `…_with_http_info` variant that also returns the status code and headers.

## Requirements

| Dependency | Version |
| --- | --- |
| Ruby | 2.7 or later |
| [Typhoeus](https://rubygems.org/gems/typhoeus) | `~> 1.0` (installed automatically) |

You'll also need an Elastic Email **API key**. You can create one in your [API settings](https://app.elasticemail.com/marketing/settings/new/manage-api). Each endpoint's documentation lists the access level it needs.

## Installation

Install the [`ElasticEmail`](https://rubygems.org/gems/ElasticEmail) gem from RubyGems:

```bash
gem install ElasticEmail
```

Or add it to your `Gemfile`:

```ruby
gem 'ElasticEmail', '~> 4.4'
```

and run `bundle install`. RubyGems installs the dependency ([Typhoeus](https://rubygems.org/gems/typhoeus)) for you.

## Quick start

> [!IMPORTANT]
> Elastic Email only sends from verified domains. Before your first send, [verify your sending domain](https://help.elasticemail.com/en/articles/4934400-how-to-verify-your-domain) and use an address on that domain as the sender.

### Configure the client

```ruby
require 'ElasticEmail'

ElasticEmail.configure do |config|
  config.api_key['X-ElasticEmail-ApiKey'] = ENV.fetch('ELASTICEMAIL_API_KEY')
end
```

> [!TIP]
> Keep your API key out of source code. Load it from an environment variable, Rails credentials or a secrets manager.

### Send a transactional email

```ruby
emails = ElasticEmail::EmailsApi.new

message = ElasticEmail::EmailTransactionalMessageData.new(
  recipients: ElasticEmail::TransactionalRecipient.new(to: ['john.doe@example.com']),
  content: ElasticEmail::EmailContent.new(
    from: 'My App <no-reply@yourdomain.com>',
    subject: 'Welcome aboard!',
    body: [
      ElasticEmail::BodyPart.new(content_type: ElasticEmail::BodyContentType::HTML, content: '<h1>Hello!</h1><p>Thanks for signing up.</p>'),
      ElasticEmail::BodyPart.new(content_type: ElasticEmail::BodyContentType::PLAIN_TEXT, content: 'Hello! Thanks for signing up.')
    ]
  )
)

begin
  result = emails.emails_transactional_post(message)
  puts "Sent. TransactionID: #{result.transaction_id}, MessageID: #{result.message_id}"
rescue ElasticEmail::ApiError => e
  puts "Elastic Email API error #{e.code}: #{e.response_body}"
end
```

The `from` address must use a domain you've [verified in your Elastic Email account](https://help.elasticemail.com/en/articles/4934400-how-to-verify-your-domain).

### Retry a send safely (Idempotency-Key)

```ruby
require 'securerandom'

# One key per logical send. Reuse it only when you retry this same send.
idempotency_key = SecureRandom.uuid

# After a timeout or connection error, call this again with the same message and the same key.
result = emails.emails_transactional_post(message, idempotency_key: idempotency_key)
puts "TransactionID: #{result.transaction_id}"
```

If the same key arrives again with the same request within 24 hours, Elastic Email returns the stored response of the first one (same `TransactionID` and `MessageID`, plus an `Idempotency-Replayed: true` response header) and doesn't send or charge again. Retry with an identical body: the same key with a different body gets `422`, and a retry while the first request is still running gets `409`. A `503` means the key couldn't be checked, so wait for the `Retry-After` seconds and retry with the same key. `emails_post` and `emails_mergefile_post` take the same `idempotency_key:` option, and sends without a key work as before.

### Send from a template with merge fields

```ruby
message = ElasticEmail::EmailTransactionalMessageData.new(
  recipients: ElasticEmail::TransactionalRecipient.new(to: ['john.doe@example.com']),
  content: ElasticEmail::EmailContent.new(
    from: 'My App <no-reply@yourdomain.com>',
    template_name: 'welcome-template',
    merge: { 'firstname' => 'John' }
  )
)

emails.emails_transactional_post(message)
```

### Timeouts, debugging and SSL

```ruby
ElasticEmail.configure do |config|
  config.timeout = 30          # seconds; 0 (default) means no timeout
  config.debugging = true      # log requests and responses to config.logger
  config.ssl_ca_cert = '/path/to/ca-bundle.crt'
end
```

### Create a signed webhook

Webhooks can sign every request with HMAC-SHA256 and send events as a `POST` with a JSON body. Both options are set when you create the webhook and can't be changed later. Webhooks created without them keep working as unsigned `GET` requests.

```ruby
webhooks = ElasticEmail::WebhookApi.new

payload = ElasticEmail::WebhookCreatePayload.new(
  name: 'my-webhook',
  url: 'https://your-app.example.com/webhook',
  notification_for_sent: true,
  notification_for_opened: true,
  notification_for_clicked: true,
  enable_signing: true,
  delivery_method: ElasticEmail::WebhookDeliveryMethod::POST_JSON
)

webhook = webhooks.webhook_post(payload)
# Returned only now: store it, e.g. as ELASTICEMAIL_WEBHOOK_SECRET.
puts webhook.signing_secret
```

`SigningSecret` is returned only when the webhook is created and when you rotate it with `webhook_by_publicid_secret_rotate_post`, so store it right away. Each signed request carries `X-ElasticEmail-Timestamp` and `X-ElasticEmail-Signature: v1=<hex>`, where the signature is `hex(HMAC-SHA256(secret, "{timestamp}\n{METHOD}\n{path and query}\n{raw body}"))`. Verify it against the raw body before you parse the JSON, reject timestamps more than 5 minutes old, and compare in constant time. The [webhooks guide](https://github.com/ElasticEmail/elasticemail-examples/blob/main/docs/webhooks.md) and the [examples repository](https://github.com/ElasticEmail/elasticemail-examples) have ready-made handlers.

## More examples

More complete, runnable samples are in the **[Elastic Email examples repository](https://github.com/ElasticEmail/elasticemail-examples)**. It covers transactional email, SMTP, webhooks, inbound email, contacts and serverless platforms across 20+ languages and frameworks.

- 💎 [Ruby examples](https://github.com/ElasticEmail/elasticemail-examples/tree/main/ruby-elasticemail-examples)
- 📂 [All examples](https://github.com/ElasticEmail/elasticemail-examples)

## Authentication

| Scheme | Header | Used for |
| --- | --- | --- |
| `apikey` | `X-ElasticEmail-ApiKey` | All standard API calls |
| `ApiKeyAuthCustomBranding` | `X-Auth-Token` | Custom-branding (white-label) accounts |

## API limits

- Up to **20 concurrent connections** per account
- A hard timeout of **600 seconds** per request

## API reference

All URIs are relative to `https://api.elasticemail.com/v4`. The SDK covers **115 endpoints** across 16 API classes: `CampaignsApi`, `ContactsApi`, `DomainsApi`, `EmailsApi`, `EventsApi`, `FilesApi`, `InboundRouteApi`, `ListsApi`, `SecurityApi`, `SegmentsApi`, `StatisticsApi`, `SubAccountsApi`, `SuppressionsApi`, `TemplatesApi`, `VerificationsApi` and `WebhookApi`, all in the `ElasticEmail` module.

<details>
<summary><strong>Show all endpoints</strong></summary>

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ElasticEmail::CampaignsApi* | [**campaigns_automation_by_name_trigger_post**](docs/CampaignsApi.md#campaigns_automation_by_name_trigger_post) | **POST** /campaigns/automation/{name}/trigger | Trigger Automation for Contact
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_delete**](docs/CampaignsApi.md#campaigns_by_name_delete) | **DELETE** /campaigns/{name} | Delete Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_get**](docs/CampaignsApi.md#campaigns_by_name_get) | **GET** /campaigns/{name} | Load Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_pause_put**](docs/CampaignsApi.md#campaigns_by_name_pause_put) | **PUT** /campaigns/{name}/pause | Pause Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_by_name_put**](docs/CampaignsApi.md#campaigns_by_name_put) | **PUT** /campaigns/{name} | Update Campaign
*ElasticEmail::CampaignsApi* | [**campaigns_get**](docs/CampaignsApi.md#campaigns_get) | **GET** /campaigns | Load Campaigns
*ElasticEmail::CampaignsApi* | [**campaigns_post**](docs/CampaignsApi.md#campaigns_post) | **POST** /campaigns | Add Campaign
*ElasticEmail::ContactsApi* | [**contacts_by_email_delete**](docs/ContactsApi.md#contacts_by_email_delete) | **DELETE** /contacts/{email} | Delete Contact
*ElasticEmail::ContactsApi* | [**contacts_by_email_get**](docs/ContactsApi.md#contacts_by_email_get) | **GET** /contacts/{email} | Load Contact
*ElasticEmail::ContactsApi* | [**contacts_by_email_put**](docs/ContactsApi.md#contacts_by_email_put) | **PUT** /contacts/{email} | Update Contact
*ElasticEmail::ContactsApi* | [**contacts_delete_post**](docs/ContactsApi.md#contacts_delete_post) | **POST** /contacts/delete | Delete Contacts Bulk
*ElasticEmail::ContactsApi* | [**contacts_export_by_id_status_get**](docs/ContactsApi.md#contacts_export_by_id_status_get) | **GET** /contacts/export/{id}/status | Check Export Status
*ElasticEmail::ContactsApi* | [**contacts_export_post**](docs/ContactsApi.md#contacts_export_post) | **POST** /contacts/export | Export Contacts
*ElasticEmail::ContactsApi* | [**contacts_get**](docs/ContactsApi.md#contacts_get) | **GET** /contacts | Load Contacts
*ElasticEmail::ContactsApi* | [**contacts_import_post**](docs/ContactsApi.md#contacts_import_post) | **POST** /contacts/import | Upload Contacts
*ElasticEmail::ContactsApi* | [**contacts_post**](docs/ContactsApi.md#contacts_post) | **POST** /contacts | Add Contact
*ElasticEmail::DomainsApi* | [**domains_by_domain_delete**](docs/DomainsApi.md#domains_by_domain_delete) | **DELETE** /domains/{domain} | Delete Domain
*ElasticEmail::DomainsApi* | [**domains_by_domain_get**](docs/DomainsApi.md#domains_by_domain_get) | **GET** /domains/{domain} | Load Domain
*ElasticEmail::DomainsApi* | [**domains_by_domain_put**](docs/DomainsApi.md#domains_by_domain_put) | **PUT** /domains/{domain} | Update Domain
*ElasticEmail::DomainsApi* | [**domains_by_domain_restricted_get**](docs/DomainsApi.md#domains_by_domain_restricted_get) | **GET** /domains/{domain}/restricted | Check for domain restriction
*ElasticEmail::DomainsApi* | [**domains_by_domain_verification_put**](docs/DomainsApi.md#domains_by_domain_verification_put) | **PUT** /domains/{domain}/verification | Verify Domain
*ElasticEmail::DomainsApi* | [**domains_by_email_default_patch**](docs/DomainsApi.md#domains_by_email_default_patch) | **PATCH** /domains/{email}/default | Set Default
*ElasticEmail::DomainsApi* | [**domains_get**](docs/DomainsApi.md#domains_get) | **GET** /domains | Load Domains
*ElasticEmail::DomainsApi* | [**domains_post**](docs/DomainsApi.md#domains_post) | **POST** /domains | Add Domain
*ElasticEmail::EmailsApi* | [**emails_by_msgid_view_get**](docs/EmailsApi.md#emails_by_msgid_view_get) | **GET** /emails/{msgid}/view | View Email
*ElasticEmail::EmailsApi* | [**emails_by_transactionid_status_get**](docs/EmailsApi.md#emails_by_transactionid_status_get) | **GET** /emails/{transactionid}/status | Get Status
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
*ElasticEmail::ListsApi* | [**lists_by_listname_contacts_get**](docs/ListsApi.md#lists_by_listname_contacts_get) | **GET** /lists/{listname}/contacts | Load Contacts in List
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
*ElasticEmail::SubAccountsApi* | [**subaccounts_by_email_apikey_get**](docs/SubAccountsApi.md#subaccounts_by_email_apikey_get) | **GET** /subaccounts/{email}/apikey | Get SubAccount ApiKey
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
*ElasticEmail::WebhookApi* | [**webhook_by_publicid_delete**](docs/WebhookApi.md#webhook_by_publicid_delete) | **DELETE** /webhook/{publicid} | Delete Webhook
*ElasticEmail::WebhookApi* | [**webhook_by_publicid_get**](docs/WebhookApi.md#webhook_by_publicid_get) | **GET** /webhook/{publicid} | Load Webhook
*ElasticEmail::WebhookApi* | [**webhook_by_publicid_put**](docs/WebhookApi.md#webhook_by_publicid_put) | **PUT** /webhook/{publicid} | Update Webhook
*ElasticEmail::WebhookApi* | [**webhook_by_publicid_secret_rotate_post**](docs/WebhookApi.md#webhook_by_publicid_secret_rotate_post) | **POST** /webhook/{publicid}/secret/rotate | Rotate Webhook Secret
*ElasticEmail::WebhookApi* | [**webhook_get**](docs/WebhookApi.md#webhook_get) | **GET** /webhook | Load Webhooks
*ElasticEmail::WebhookApi* | [**webhook_post**](docs/WebhookApi.md#webhook_post) | **POST** /webhook | Add Webhook

</details>

## Models

<details>
<summary><strong>Show all 99 models</strong></summary>

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
 - [ElasticEmail::CertificateValidationStatus](docs/CertificateValidationStatus.md)
 - [ElasticEmail::ChannelLogStatusSummary](docs/ChannelLogStatusSummary.md)
 - [ElasticEmail::CompressionFormat](docs/CompressionFormat.md)
 - [ElasticEmail::ConsentData](docs/ConsentData.md)
 - [ElasticEmail::ConsentTracking](docs/ConsentTracking.md)
 - [ElasticEmail::Contact](docs/Contact.md)
 - [ElasticEmail::ContactActivity](docs/ContactActivity.md)
 - [ElasticEmail::ContactPayload](docs/ContactPayload.md)
 - [ElasticEmail::ContactSource](docs/ContactSource.md)
 - [ElasticEmail::ContactStatus](docs/ContactStatus.md)
 - [ElasticEmail::ContactUpdatePayload](docs/ContactUpdatePayload.md)
 - [ElasticEmail::ContactsList](docs/ContactsList.md)
 - [ElasticEmail::DKIMRecord](docs/DKIMRecord.md)
 - [ElasticEmail::DeliveryOptimizationType](docs/DeliveryOptimizationType.md)
 - [ElasticEmail::DomainData](docs/DomainData.md)
 - [ElasticEmail::DomainDetail](docs/DomainDetail.md)
 - [ElasticEmail::DomainOwner](docs/DomainOwner.md)
 - [ElasticEmail::DomainPayload](docs/DomainPayload.md)
 - [ElasticEmail::DomainUpdatePayload](docs/DomainUpdatePayload.md)
 - [ElasticEmail::EmailContent](docs/EmailContent.md)
 - [ElasticEmail::EmailData](docs/EmailData.md)
 - [ElasticEmail::EmailJobFailedStatus](docs/EmailJobFailedStatus.md)
 - [ElasticEmail::EmailJobStatus](docs/EmailJobStatus.md)
 - [ElasticEmail::EmailMessageData](docs/EmailMessageData.md)
 - [ElasticEmail::EmailPredictedValidationStatus](docs/EmailPredictedValidationStatus.md)
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
 - [ElasticEmail::MessageCategoryEnum](docs/MessageCategoryEnum.md)
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
 - [ElasticEmail::TrackingType](docs/TrackingType.md)
 - [ElasticEmail::TrackingValidationStatus](docs/TrackingValidationStatus.md)
 - [ElasticEmail::TransactionalRecipient](docs/TransactionalRecipient.md)
 - [ElasticEmail::Utm](docs/Utm.md)
 - [ElasticEmail::VerificationFileResult](docs/VerificationFileResult.md)
 - [ElasticEmail::VerificationFileResultDetails](docs/VerificationFileResultDetails.md)
 - [ElasticEmail::VerificationStatus](docs/VerificationStatus.md)
 - [ElasticEmail::Webhook](docs/Webhook.md)
 - [ElasticEmail::WebhookCreatePayload](docs/WebhookCreatePayload.md)
 - [ElasticEmail::WebhookDeliveryMethod](docs/WebhookDeliveryMethod.md)
 - [ElasticEmail::WebhookUpdatePayload](docs/WebhookUpdatePayload.md)

</details>

## Tests

The `spec/` folder has generated RSpec specs for every API class and model:

```bash
bundle install
bundle exec rspec
```

## Versioning

The SDK follows the Elastic Email API v4. Package versions and release notes are listed on [RubyGems](https://rubygems.org/gems/ElasticEmail/versions) and in [GitHub Releases](https://github.com/ElasticEmail/elasticemail-ruby/releases).

<details>
<summary>Build details</summary>

- API version: 4.0.0
- SDK version: 4.4.0
- Generator version: 7.11.0
- Build package: `org.openapitools.codegen.languages.RubyClientCodegen`

</details>

## Contributing

Contributions are welcome! Most of this SDK is generated from the Elastic Email OpenAPI specification, so please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a pull request.

- 🐛 [Report a bug](https://github.com/ElasticEmail/elasticemail-ruby/issues/new?template=bug_report.md)
- 💡 [Request a feature](https://github.com/ElasticEmail/elasticemail-ruby/issues/new?template=feature_request.md)
- 🔒 [Report a security issue](SECURITY.md)

This project follows the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).

## Support

> [!IMPORTANT]
> The fastest way to get help is the **chat widget on [elasticemail.com](https://elasticemail.com)**. Our support team can help with your account, sending, deliverability and API questions.

- 💬 [Chat with support on elasticemail.com](https://elasticemail.com) (preferred)
- 📚 [API documentation](https://elasticemail.com/developers/api-documentation/rest-api)
- 🧪 [Examples repository](https://github.com/ElasticEmail/elasticemail-examples)
- 🐛 [GitHub issues](https://github.com/ElasticEmail/elasticemail-ruby/issues), for bugs in this SDK only

## License

Released under the [MIT License](LICENSE). Copyright © 2021–2026 Elastic Email.
