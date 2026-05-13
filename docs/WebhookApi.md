# ElasticEmail::WebhookApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_by_publicid_delete**](WebhookApi.md#webhook_by_publicid_delete) | **DELETE** /webhook/{publicid} | Delete Webhook |
| [**webhook_by_publicid_get**](WebhookApi.md#webhook_by_publicid_get) | **GET** /webhook/{publicid} | Load Webhook |
| [**webhook_by_publicid_put**](WebhookApi.md#webhook_by_publicid_put) | **PUT** /webhook/{publicid} | Update Webhook |
| [**webhook_get**](WebhookApi.md#webhook_get) | **GET** /webhook | Load Webhooks |
| [**webhook_post**](WebhookApi.md#webhook_post) | **POST** /webhook | Add Webhook |


## webhook_by_publicid_delete

> webhook_by_publicid_delete(publicid)

Delete Webhook

Delete the specified notifications webhook. Required Access Level: ModifyWebNotifications

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['X-ElasticEmail-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ElasticEmail-ApiKey'] = 'Bearer'
end

api_instance = ElasticEmail::WebhookApi.new
publicid = 'publicid_example' # String | 

begin
  # Delete Webhook
  api_instance.webhook_by_publicid_delete(publicid)
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_delete: #{e}"
end
```

#### Using the webhook_by_publicid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_by_publicid_delete_with_http_info(publicid)

```ruby
begin
  # Delete Webhook
  data, status_code, headers = api_instance.webhook_by_publicid_delete_with_http_info(publicid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publicid** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## webhook_by_publicid_get

> <Webhook> webhook_by_publicid_get(publicid)

Load Webhook

Load notifications webhook details. Required Access Level: ViewWebNotifications

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['X-ElasticEmail-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ElasticEmail-ApiKey'] = 'Bearer'
end

api_instance = ElasticEmail::WebhookApi.new
publicid = 'publicid_example' # String | 

begin
  # Load Webhook
  result = api_instance.webhook_by_publicid_get(publicid)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_get: #{e}"
end
```

#### Using the webhook_by_publicid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> webhook_by_publicid_get_with_http_info(publicid)

```ruby
begin
  # Load Webhook
  data, status_code, headers = api_instance.webhook_by_publicid_get_with_http_info(publicid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publicid** | **String** |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_by_publicid_put

> <Webhook> webhook_by_publicid_put(publicid, webhook_update_payload)

Update Webhook

Update notification webhook. Required Access Level: ModifyWebNotifications

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['X-ElasticEmail-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ElasticEmail-ApiKey'] = 'Bearer'
end

api_instance = ElasticEmail::WebhookApi.new
publicid = 'publicid_example' # String | 
webhook_update_payload = ElasticEmail::WebhookUpdatePayload.new # WebhookUpdatePayload | 

begin
  # Update Webhook
  result = api_instance.webhook_by_publicid_put(publicid, webhook_update_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_put: #{e}"
end
```

#### Using the webhook_by_publicid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> webhook_by_publicid_put_with_http_info(publicid, webhook_update_payload)

```ruby
begin
  # Update Webhook
  data, status_code, headers = api_instance.webhook_by_publicid_put_with_http_info(publicid, webhook_update_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_by_publicid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publicid** | **String** |  |  |
| **webhook_update_payload** | [**WebhookUpdatePayload**](WebhookUpdatePayload.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhook_get

> <Array<Webhook>> webhook_get(opts)

Load Webhooks

Returns a list of notification webhooks. Required Access Level: ViewWebNotifications

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['X-ElasticEmail-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ElasticEmail-ApiKey'] = 'Bearer'
end

api_instance = ElasticEmail::WebhookApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Webhooks
  result = api_instance.webhook_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_get: #{e}"
end
```

#### Using the webhook_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Webhook>>, Integer, Hash)> webhook_get_with_http_info(opts)

```ruby
begin
  # Load Webhooks
  data, status_code, headers = api_instance.webhook_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Webhook>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_post

> <Webhook> webhook_post(webhook_create_payload)

Add Webhook

Add a notification webhook. Required Access Level: ModifyWebNotifications

### Examples

```ruby
require 'time'
require 'ElasticEmail'
# setup authorization
ElasticEmail.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['X-ElasticEmail-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ElasticEmail-ApiKey'] = 'Bearer'
end

api_instance = ElasticEmail::WebhookApi.new
webhook_create_payload = ElasticEmail::WebhookCreatePayload.new({name: 'attachment.txt', url: 'http://address.for.notification.com'}) # WebhookCreatePayload | 

begin
  # Add Webhook
  result = api_instance.webhook_post(webhook_create_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_post: #{e}"
end
```

#### Using the webhook_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> webhook_post_with_http_info(webhook_create_payload)

```ruby
begin
  # Add Webhook
  data, status_code, headers = api_instance.webhook_post_with_http_info(webhook_create_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue ElasticEmail::ApiError => e
  puts "Error when calling WebhookApi->webhook_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_create_payload** | [**WebhookCreatePayload**](WebhookCreatePayload.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

