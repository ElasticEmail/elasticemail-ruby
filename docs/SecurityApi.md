# ElasticEmail::SecurityApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**security_apikeys_by_name_delete**](SecurityApi.md#security_apikeys_by_name_delete) | **DELETE** /security/apikeys/{name} | Delete ApiKey |
| [**security_apikeys_by_name_get**](SecurityApi.md#security_apikeys_by_name_get) | **GET** /security/apikeys/{name} | Load ApiKey |
| [**security_apikeys_by_name_put**](SecurityApi.md#security_apikeys_by_name_put) | **PUT** /security/apikeys/{name} | Update ApiKey |
| [**security_apikeys_get**](SecurityApi.md#security_apikeys_get) | **GET** /security/apikeys | List ApiKeys |
| [**security_apikeys_post**](SecurityApi.md#security_apikeys_post) | **POST** /security/apikeys | Add ApiKey |
| [**security_smtp_by_name_delete**](SecurityApi.md#security_smtp_by_name_delete) | **DELETE** /security/smtp/{name} | Delete SMTP Credential |
| [**security_smtp_by_name_get**](SecurityApi.md#security_smtp_by_name_get) | **GET** /security/smtp/{name} | Load SMTP Credential |
| [**security_smtp_by_name_put**](SecurityApi.md#security_smtp_by_name_put) | **PUT** /security/smtp/{name} | Update SMTP Credential |
| [**security_smtp_get**](SecurityApi.md#security_smtp_get) | **GET** /security/smtp | List SMTP Credentials |
| [**security_smtp_post**](SecurityApi.md#security_smtp_post) | **POST** /security/smtp | Add SMTP Credential |


## security_apikeys_by_name_delete

> security_apikeys_by_name_delete(name, opts)

Delete ApiKey

Delete your existing ApiKey. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the ApiKey
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which ApiKey should be deleted
}

begin
  # Delete ApiKey
  api_instance.security_apikeys_by_name_delete(name, opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_delete: #{e}"
end
```

#### Using the security_apikeys_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> security_apikeys_by_name_delete_with_http_info(name, opts)

```ruby
begin
  # Delete ApiKey
  data, status_code, headers = api_instance.security_apikeys_by_name_delete_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the ApiKey |  |
| **subaccount** | **String** | Email of the subaccount of which ApiKey should be deleted | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## security_apikeys_by_name_get

> <ApiKey> security_apikeys_by_name_get(name, opts)

Load ApiKey

Load your existing ApiKey info. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the ApiKey
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which ApiKey should be loaded
}

begin
  # Load ApiKey
  result = api_instance.security_apikeys_by_name_get(name, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_get: #{e}"
end
```

#### Using the security_apikeys_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> security_apikeys_by_name_get_with_http_info(name, opts)

```ruby
begin
  # Load ApiKey
  data, status_code, headers = api_instance.security_apikeys_by_name_get_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the ApiKey |  |
| **subaccount** | **String** | Email of the subaccount of which ApiKey should be loaded | [optional] |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_apikeys_by_name_put

> <ApiKey> security_apikeys_by_name_put(name, api_key_payload)

Update ApiKey

Update your existing ApiKey. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the ApiKey
api_key_payload = ElasticEmail::ApiKeyPayload.new # ApiKeyPayload | 

begin
  # Update ApiKey
  result = api_instance.security_apikeys_by_name_put(name, api_key_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_put: #{e}"
end
```

#### Using the security_apikeys_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> security_apikeys_by_name_put_with_http_info(name, api_key_payload)

```ruby
begin
  # Update ApiKey
  data, status_code, headers = api_instance.security_apikeys_by_name_put_with_http_info(name, api_key_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the ApiKey |  |
| **api_key_payload** | [**ApiKeyPayload**](ApiKeyPayload.md) |  |  |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## security_apikeys_get

> <Array<ApiKey>> security_apikeys_get(opts)

List ApiKeys

List all your existing ApiKeys. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which ApiKeys should be loaded
}

begin
  # List ApiKeys
  result = api_instance.security_apikeys_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_get: #{e}"
end
```

#### Using the security_apikeys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiKey>>, Integer, Hash)> security_apikeys_get_with_http_info(opts)

```ruby
begin
  # List ApiKeys
  data, status_code, headers = api_instance.security_apikeys_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiKey>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subaccount** | **String** | Email of the subaccount of which ApiKeys should be loaded | [optional] |

### Return type

[**Array&lt;ApiKey&gt;**](ApiKey.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_apikeys_post

> <NewApiKey> security_apikeys_post(api_key_payload)

Add ApiKey

Add a new ApiKey. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
api_key_payload = ElasticEmail::ApiKeyPayload.new # ApiKeyPayload | 

begin
  # Add ApiKey
  result = api_instance.security_apikeys_post(api_key_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_post: #{e}"
end
```

#### Using the security_apikeys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewApiKey>, Integer, Hash)> security_apikeys_post_with_http_info(api_key_payload)

```ruby
begin
  # Add ApiKey
  data, status_code, headers = api_instance.security_apikeys_post_with_http_info(api_key_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewApiKey>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_apikeys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_payload** | [**ApiKeyPayload**](ApiKeyPayload.md) |  |  |

### Return type

[**NewApiKey**](NewApiKey.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## security_smtp_by_name_delete

> security_smtp_by_name_delete(name, opts)

Delete SMTP Credential

Delete your existing SMTP Credentials. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the SMTP Credential
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which credential should be deleted
}

begin
  # Delete SMTP Credential
  api_instance.security_smtp_by_name_delete(name, opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_delete: #{e}"
end
```

#### Using the security_smtp_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> security_smtp_by_name_delete_with_http_info(name, opts)

```ruby
begin
  # Delete SMTP Credential
  data, status_code, headers = api_instance.security_smtp_by_name_delete_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the SMTP Credential |  |
| **subaccount** | **String** | Email of the subaccount of which credential should be deleted | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## security_smtp_by_name_get

> <SmtpCredentials> security_smtp_by_name_get(name, opts)

Load SMTP Credential

Load your existing SMTP Credential info. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the SMTP Credential
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which credential should be loaded
}

begin
  # Load SMTP Credential
  result = api_instance.security_smtp_by_name_get(name, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_get: #{e}"
end
```

#### Using the security_smtp_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpCredentials>, Integer, Hash)> security_smtp_by_name_get_with_http_info(name, opts)

```ruby
begin
  # Load SMTP Credential
  data, status_code, headers = api_instance.security_smtp_by_name_get_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpCredentials>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the SMTP Credential |  |
| **subaccount** | **String** | Email of the subaccount of which credential should be loaded | [optional] |

### Return type

[**SmtpCredentials**](SmtpCredentials.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_smtp_by_name_put

> <SmtpCredentials> security_smtp_by_name_put(name, smtp_credentials_payload)

Update SMTP Credential

Update your existing SMTP Credentials. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
name = 'name_example' # String | Name of the SMTP Credential
smtp_credentials_payload = ElasticEmail::SmtpCredentialsPayload.new # SmtpCredentialsPayload | 

begin
  # Update SMTP Credential
  result = api_instance.security_smtp_by_name_put(name, smtp_credentials_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_put: #{e}"
end
```

#### Using the security_smtp_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpCredentials>, Integer, Hash)> security_smtp_by_name_put_with_http_info(name, smtp_credentials_payload)

```ruby
begin
  # Update SMTP Credential
  data, status_code, headers = api_instance.security_smtp_by_name_put_with_http_info(name, smtp_credentials_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpCredentials>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the SMTP Credential |  |
| **smtp_credentials_payload** | [**SmtpCredentialsPayload**](SmtpCredentialsPayload.md) |  |  |

### Return type

[**SmtpCredentials**](SmtpCredentials.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## security_smtp_get

> <Array<SmtpCredentials>> security_smtp_get(opts)

List SMTP Credentials

List all your existing SMTP Credentials. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
opts = {
  subaccount: 'subaccount_example' # String | Email of the subaccount of which credentials should be listed
}

begin
  # List SMTP Credentials
  result = api_instance.security_smtp_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_get: #{e}"
end
```

#### Using the security_smtp_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SmtpCredentials>>, Integer, Hash)> security_smtp_get_with_http_info(opts)

```ruby
begin
  # List SMTP Credentials
  data, status_code, headers = api_instance.security_smtp_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SmtpCredentials>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subaccount** | **String** | Email of the subaccount of which credentials should be listed | [optional] |

### Return type

[**Array&lt;SmtpCredentials&gt;**](SmtpCredentials.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## security_smtp_post

> <NewSmtpCredentials> security_smtp_post(smtp_credentials_payload)

Add SMTP Credential

Add new SMTP Credential. Required Access Level: Security

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

api_instance = ElasticEmail::SecurityApi.new
smtp_credentials_payload = ElasticEmail::SmtpCredentialsPayload.new # SmtpCredentialsPayload | 

begin
  # Add SMTP Credential
  result = api_instance.security_smtp_post(smtp_credentials_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_post: #{e}"
end
```

#### Using the security_smtp_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewSmtpCredentials>, Integer, Hash)> security_smtp_post_with_http_info(smtp_credentials_payload)

```ruby
begin
  # Add SMTP Credential
  data, status_code, headers = api_instance.security_smtp_post_with_http_info(smtp_credentials_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewSmtpCredentials>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SecurityApi->security_smtp_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smtp_credentials_payload** | [**SmtpCredentialsPayload**](SmtpCredentialsPayload.md) |  |  |

### Return type

[**NewSmtpCredentials**](NewSmtpCredentials.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

