# ElasticEmail::SuppressionsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**suppressions_bounces_get**](SuppressionsApi.md#suppressions_bounces_get) | **GET** /suppressions/bounces | Get Bounce List |
| [**suppressions_bounces_import_post**](SuppressionsApi.md#suppressions_bounces_import_post) | **POST** /suppressions/bounces/import | Add Bounces Async |
| [**suppressions_bounces_post**](SuppressionsApi.md#suppressions_bounces_post) | **POST** /suppressions/bounces | Add Bounces |
| [**suppressions_by_email_delete**](SuppressionsApi.md#suppressions_by_email_delete) | **DELETE** /suppressions/{email} | Delete Suppression |
| [**suppressions_by_email_get**](SuppressionsApi.md#suppressions_by_email_get) | **GET** /suppressions/{email} | Get Suppression |
| [**suppressions_complaints_get**](SuppressionsApi.md#suppressions_complaints_get) | **GET** /suppressions/complaints | Get Complaints List |
| [**suppressions_complaints_import_post**](SuppressionsApi.md#suppressions_complaints_import_post) | **POST** /suppressions/complaints/import | Add Complaints Async |
| [**suppressions_complaints_post**](SuppressionsApi.md#suppressions_complaints_post) | **POST** /suppressions/complaints | Add Complaints |
| [**suppressions_get**](SuppressionsApi.md#suppressions_get) | **GET** /suppressions | Get Suppressions |
| [**suppressions_unsubscribes_get**](SuppressionsApi.md#suppressions_unsubscribes_get) | **GET** /suppressions/unsubscribes | Get Unsubscribes List |
| [**suppressions_unsubscribes_import_post**](SuppressionsApi.md#suppressions_unsubscribes_import_post) | **POST** /suppressions/unsubscribes/import | Add Unsubscribes Async |
| [**suppressions_unsubscribes_post**](SuppressionsApi.md#suppressions_unsubscribes_post) | **POST** /suppressions/unsubscribes | Add Unsubscribes |


## suppressions_bounces_get

> <Array<Suppression>> suppressions_bounces_get(opts)

Get Bounce List

Retrieve your list of bounced emails. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  search: 'text', # String | Text fragment used for searching.
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Get Bounce List
  result = api_instance.suppressions_bounces_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_get: #{e}"
end
```

#### Using the suppressions_bounces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_bounces_get_with_http_info(opts)

```ruby
begin
  # Get Bounce List
  data, status_code, headers = api_instance.suppressions_bounces_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Text fragment used for searching. | [optional] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suppressions_bounces_import_post

> suppressions_bounces_import_post(opts)

Add Bounces Async

Add Bounced. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Add Bounces Async
  api_instance.suppressions_bounces_import_post(opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_import_post: #{e}"
end
```

#### Using the suppressions_bounces_import_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suppressions_bounces_import_post_with_http_info(opts)

```ruby
begin
  # Add Bounces Async
  data, status_code, headers = api_instance.suppressions_bounces_import_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## suppressions_bounces_post

> <Array<Suppression>> suppressions_bounces_post(request_body)

Add Bounces

Add Bounced. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
request_body = ['property_example'] # Array<String> | Emails to add as bounces. Limited to 1000 per request

begin
  # Add Bounces
  result = api_instance.suppressions_bounces_post(request_body)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_post: #{e}"
end
```

#### Using the suppressions_bounces_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_bounces_post_with_http_info(request_body)

```ruby
begin
  # Add Bounces
  data, status_code, headers = api_instance.suppressions_bounces_post_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_bounces_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;String&gt;**](String.md) | Emails to add as bounces. Limited to 1000 per request |  |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## suppressions_by_email_delete

> suppressions_by_email_delete(email)

Delete Suppression

Delete Suppression. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
email = 'mail@example.com' # String | Proper email address.

begin
  # Delete Suppression
  api_instance.suppressions_by_email_delete(email)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_by_email_delete: #{e}"
end
```

#### Using the suppressions_by_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suppressions_by_email_delete_with_http_info(email)

```ruby
begin
  # Delete Suppression
  data, status_code, headers = api_instance.suppressions_by_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_by_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## suppressions_by_email_get

> <Suppression> suppressions_by_email_get(email)

Get Suppression

Retrieve your suppression. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
email = 'mail@example.com' # String | Proper email address.

begin
  # Get Suppression
  result = api_instance.suppressions_by_email_get(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_by_email_get: #{e}"
end
```

#### Using the suppressions_by_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Suppression>, Integer, Hash)> suppressions_by_email_get_with_http_info(email)

```ruby
begin
  # Get Suppression
  data, status_code, headers = api_instance.suppressions_by_email_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Suppression>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_by_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |

### Return type

[**Suppression**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suppressions_complaints_get

> <Array<Suppression>> suppressions_complaints_get(opts)

Get Complaints List

Retrieve your list of complaints. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  search: 'text', # String | Text fragment used for searching.
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Get Complaints List
  result = api_instance.suppressions_complaints_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_get: #{e}"
end
```

#### Using the suppressions_complaints_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_complaints_get_with_http_info(opts)

```ruby
begin
  # Get Complaints List
  data, status_code, headers = api_instance.suppressions_complaints_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Text fragment used for searching. | [optional] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suppressions_complaints_import_post

> suppressions_complaints_import_post(opts)

Add Complaints Async

Add Complaints. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Add Complaints Async
  api_instance.suppressions_complaints_import_post(opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_import_post: #{e}"
end
```

#### Using the suppressions_complaints_import_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suppressions_complaints_import_post_with_http_info(opts)

```ruby
begin
  # Add Complaints Async
  data, status_code, headers = api_instance.suppressions_complaints_import_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## suppressions_complaints_post

> <Array<Suppression>> suppressions_complaints_post(request_body)

Add Complaints

Add Complaints. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
request_body = ['property_example'] # Array<String> | Emails to add as complaints. Limited to 1000 per request

begin
  # Add Complaints
  result = api_instance.suppressions_complaints_post(request_body)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_post: #{e}"
end
```

#### Using the suppressions_complaints_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_complaints_post_with_http_info(request_body)

```ruby
begin
  # Add Complaints
  data, status_code, headers = api_instance.suppressions_complaints_post_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_complaints_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;String&gt;**](String.md) | Emails to add as complaints. Limited to 1000 per request |  |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## suppressions_get

> <Array<Suppression>> suppressions_get(opts)

Get Suppressions

Retrieve your suppressions. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Get Suppressions
  result = api_instance.suppressions_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_get: #{e}"
end
```

#### Using the suppressions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_get_with_http_info(opts)

```ruby
begin
  # Get Suppressions
  data, status_code, headers = api_instance.suppressions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suppressions_unsubscribes_get

> <Array<Suppression>> suppressions_unsubscribes_get(opts)

Get Unsubscribes List

Retrieve your list of unsubscribes. Required Access Level: ViewContacts, ViewSuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  search: 'text', # String | Text fragment used for searching.
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Get Unsubscribes List
  result = api_instance.suppressions_unsubscribes_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_get: #{e}"
end
```

#### Using the suppressions_unsubscribes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_unsubscribes_get_with_http_info(opts)

```ruby
begin
  # Get Unsubscribes List
  data, status_code, headers = api_instance.suppressions_unsubscribes_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Text fragment used for searching. | [optional] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suppressions_unsubscribes_import_post

> suppressions_unsubscribes_import_post(opts)

Add Unsubscribes Async

Add Unsubscribes. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Add Unsubscribes Async
  api_instance.suppressions_unsubscribes_import_post(opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_import_post: #{e}"
end
```

#### Using the suppressions_unsubscribes_import_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suppressions_unsubscribes_import_post_with_http_info(opts)

```ruby
begin
  # Add Unsubscribes Async
  data, status_code, headers = api_instance.suppressions_unsubscribes_import_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## suppressions_unsubscribes_post

> <Array<Suppression>> suppressions_unsubscribes_post(request_body)

Add Unsubscribes

Add Unsubscribes. Required Access Level: ModifyContacts, ModifySuppressions

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

api_instance = ElasticEmail::SuppressionsApi.new
request_body = ['property_example'] # Array<String> | Emails to add as unsubscribes. Limited to 1000 per request

begin
  # Add Unsubscribes
  result = api_instance.suppressions_unsubscribes_post(request_body)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_post: #{e}"
end
```

#### Using the suppressions_unsubscribes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Suppression>>, Integer, Hash)> suppressions_unsubscribes_post_with_http_info(request_body)

```ruby
begin
  # Add Unsubscribes
  data, status_code, headers = api_instance.suppressions_unsubscribes_post_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Suppression>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SuppressionsApi->suppressions_unsubscribes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;String&gt;**](String.md) | Emails to add as unsubscribes. Limited to 1000 per request |  |

### Return type

[**Array&lt;Suppression&gt;**](Suppression.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

