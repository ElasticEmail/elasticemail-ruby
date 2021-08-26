# ElasticEmail::EmailsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**emails_by_msgid_view_get**](EmailsApi.md#emails_by_msgid_view_get) | **GET** /emails/{msgid}/view | View Email |
| [**emails_mergefile_post**](EmailsApi.md#emails_mergefile_post) | **POST** /emails/mergefile | Send Bulk Emails CSV |
| [**emails_post**](EmailsApi.md#emails_post) | **POST** /emails | Send Bulk Emails |
| [**emails_transactional_post**](EmailsApi.md#emails_transactional_post) | **POST** /emails/transactional | Send Transactional Email |


## emails_by_msgid_view_get

> <EmailData> emails_by_msgid_view_get(msgid)

View Email

Returns email details for viewing or rendering. Required Access Level: None

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ElasticEmail::EmailsApi.new
msgid = 'msgid_example' # String | Message identifier

begin
  # View Email
  result = api_instance.emails_by_msgid_view_get(msgid)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_by_msgid_view_get: #{e}"
end
```

#### Using the emails_by_msgid_view_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailData>, Integer, Hash)> emails_by_msgid_view_get_with_http_info(msgid)

```ruby
begin
  # View Email
  data, status_code, headers = api_instance.emails_by_msgid_view_get_with_http_info(msgid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailData>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_by_msgid_view_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msgid** | **String** | Message identifier |  |

### Return type

[**EmailData**](EmailData.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## emails_mergefile_post

> <EmailSend> emails_mergefile_post(merge_email_payload)

Send Bulk Emails CSV

Send bulk merge email. Required Access Level: SendHttp

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ElasticEmail::EmailsApi.new
merge_email_payload = ElasticEmail::MergeEmailPayload.new({merge_file: ElasticEmail::MessageAttachment.new({binary_content: 'binary_content_example'})}) # MergeEmailPayload | Email data

begin
  # Send Bulk Emails CSV
  result = api_instance.emails_mergefile_post(merge_email_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_mergefile_post: #{e}"
end
```

#### Using the emails_mergefile_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSend>, Integer, Hash)> emails_mergefile_post_with_http_info(merge_email_payload)

```ruby
begin
  # Send Bulk Emails CSV
  data, status_code, headers = api_instance.emails_mergefile_post_with_http_info(merge_email_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSend>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_mergefile_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_email_payload** | [**MergeEmailPayload**](MergeEmailPayload.md) | Email data |  |

### Return type

[**EmailSend**](EmailSend.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## emails_post

> <EmailSend> emails_post(email_message_data)

Send Bulk Emails

Send bulk merge email. Required Access Level: SendHttp

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ElasticEmail::EmailsApi.new
email_message_data = ElasticEmail::EmailMessageData.new({recipients: [ElasticEmail::EmailRecipient.new({email: 'mail@example.com'})]}) # EmailMessageData | Email data

begin
  # Send Bulk Emails
  result = api_instance.emails_post(email_message_data)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_post: #{e}"
end
```

#### Using the emails_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSend>, Integer, Hash)> emails_post_with_http_info(email_message_data)

```ruby
begin
  # Send Bulk Emails
  data, status_code, headers = api_instance.emails_post_with_http_info(email_message_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSend>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_message_data** | [**EmailMessageData**](EmailMessageData.md) | Email data |  |

### Return type

[**EmailSend**](EmailSend.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## emails_transactional_post

> <EmailSend> emails_transactional_post(email_transactional_message_data)

Send Transactional Email

Send transactional emails (recipients will be known to each other). Required Access Level: SendHttp

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = ElasticEmail::EmailsApi.new
email_transactional_message_data = ElasticEmail::EmailTransactionalMessageData.new({recipients: ElasticEmail::TransactionalRecipient.new({to: ['to_example']})}) # EmailTransactionalMessageData | Email data

begin
  # Send Transactional Email
  result = api_instance.emails_transactional_post(email_transactional_message_data)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_transactional_post: #{e}"
end
```

#### Using the emails_transactional_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailSend>, Integer, Hash)> emails_transactional_post_with_http_info(email_transactional_message_data)

```ruby
begin
  # Send Transactional Email
  data, status_code, headers = api_instance.emails_transactional_post_with_http_info(email_transactional_message_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailSend>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EmailsApi->emails_transactional_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_transactional_message_data** | [**EmailTransactionalMessageData**](EmailTransactionalMessageData.md) | Email data |  |

### Return type

[**EmailSend**](EmailSend.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

