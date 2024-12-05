# ElasticEmail::DomainsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**domains_by_domain_delete**](DomainsApi.md#domains_by_domain_delete) | **DELETE** /domains/{domain} | Delete Domain |
| [**domains_by_domain_get**](DomainsApi.md#domains_by_domain_get) | **GET** /domains/{domain} | Load Domain |
| [**domains_by_domain_put**](DomainsApi.md#domains_by_domain_put) | **PUT** /domains/{domain} | Update Domain |
| [**domains_by_domain_restricted_get**](DomainsApi.md#domains_by_domain_restricted_get) | **GET** /domains/{domain}/restricted | Check for domain restriction |
| [**domains_by_domain_verification_put**](DomainsApi.md#domains_by_domain_verification_put) | **PUT** /domains/{domain}/verification | Verify Domain |
| [**domains_by_email_default_patch**](DomainsApi.md#domains_by_email_default_patch) | **PATCH** /domains/{email}/default | Set Default |
| [**domains_get**](DomainsApi.md#domains_get) | **GET** /domains | Load Domains |
| [**domains_post**](DomainsApi.md#domains_post) | **POST** /domains | Add Domain |


## domains_by_domain_delete

> domains_by_domain_delete(domain)

Delete Domain

Deletes configured domain from Account. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::DomainsApi.new
domain = 'domain_example' # String | Name of the given domain

begin
  # Delete Domain
  api_instance.domains_by_domain_delete(domain)
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_delete: #{e}"
end
```

#### Using the domains_by_domain_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> domains_by_domain_delete_with_http_info(domain)

```ruby
begin
  # Delete Domain
  data, status_code, headers = api_instance.domains_by_domain_delete_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of the given domain |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## domains_by_domain_get

> <DomainData> domains_by_domain_get(domain)

Load Domain

Retrieve a domain configured for this Account. Required Access Level: ViewSettings

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

api_instance = ElasticEmail::DomainsApi.new
domain = 'domain_example' # String | Name of the given domain

begin
  # Load Domain
  result = api_instance.domains_by_domain_get(domain)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_get: #{e}"
end
```

#### Using the domains_by_domain_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainData>, Integer, Hash)> domains_by_domain_get_with_http_info(domain)

```ruby
begin
  # Load Domain
  data, status_code, headers = api_instance.domains_by_domain_get_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainData>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of the given domain |  |

### Return type

[**DomainData**](DomainData.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## domains_by_domain_put

> <DomainDetail> domains_by_domain_put(domain, domain_update_payload)

Update Domain

Updates the specified domain. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::DomainsApi.new
domain = 'domain_example' # String | Name of the given domain
domain_update_payload = ElasticEmail::DomainUpdatePayload.new # DomainUpdatePayload | Updated Domain resource

begin
  # Update Domain
  result = api_instance.domains_by_domain_put(domain, domain_update_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_put: #{e}"
end
```

#### Using the domains_by_domain_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDetail>, Integer, Hash)> domains_by_domain_put_with_http_info(domain, domain_update_payload)

```ruby
begin
  # Update Domain
  data, status_code, headers = api_instance.domains_by_domain_put_with_http_info(domain, domain_update_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDetail>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of the given domain |  |
| **domain_update_payload** | [**DomainUpdatePayload**](DomainUpdatePayload.md) | Updated Domain resource |  |

### Return type

[**DomainDetail**](DomainDetail.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## domains_by_domain_restricted_get

> Boolean domains_by_domain_restricted_get(domain)

Check for domain restriction

Checking if domain is from free provider, or restricted. Required Access Level: ViewSettings

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

api_instance = ElasticEmail::DomainsApi.new
domain = 'domain_example' # String | Name of the given domain

begin
  # Check for domain restriction
  result = api_instance.domains_by_domain_restricted_get(domain)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_restricted_get: #{e}"
end
```

#### Using the domains_by_domain_restricted_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> domains_by_domain_restricted_get_with_http_info(domain)

```ruby
begin
  # Check for domain restriction
  data, status_code, headers = api_instance.domains_by_domain_restricted_get_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_restricted_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of the given domain |  |

### Return type

**Boolean**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## domains_by_domain_verification_put

> <DomainData> domains_by_domain_verification_put(domain, body)

Verify Domain

Verifies that required DNS records exist for specified domain. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::DomainsApi.new
domain = 'domain_example' # String | Name of the given domain
body = 'body_example' # String | Tracking type used in the Tracking verification

begin
  # Verify Domain
  result = api_instance.domains_by_domain_verification_put(domain, body)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_verification_put: #{e}"
end
```

#### Using the domains_by_domain_verification_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainData>, Integer, Hash)> domains_by_domain_verification_put_with_http_info(domain, body)

```ruby
begin
  # Verify Domain
  data, status_code, headers = api_instance.domains_by_domain_verification_put_with_http_info(domain, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainData>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_domain_verification_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of the given domain |  |
| **body** | **String** | Tracking type used in the Tracking verification |  |

### Return type

[**DomainData**](DomainData.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## domains_by_email_default_patch

> <DomainDetail> domains_by_email_default_patch(email)

Set Default

Sets a verified email address as default sender. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::DomainsApi.new
email = 'email_example' # String | Default email sender, example: mail@yourdomain.com

begin
  # Set Default
  result = api_instance.domains_by_email_default_patch(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_email_default_patch: #{e}"
end
```

#### Using the domains_by_email_default_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDetail>, Integer, Hash)> domains_by_email_default_patch_with_http_info(email)

```ruby
begin
  # Set Default
  data, status_code, headers = api_instance.domains_by_email_default_patch_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDetail>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_by_email_default_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Default email sender, example: mail@yourdomain.com |  |

### Return type

[**DomainDetail**](DomainDetail.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## domains_get

> <Array<DomainDetail>> domains_get

Load Domains

Returns a list of all domains configured for this Account. Required Access Level: ViewSettings

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

api_instance = ElasticEmail::DomainsApi.new

begin
  # Load Domains
  result = api_instance.domains_get
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_get: #{e}"
end
```

#### Using the domains_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DomainDetail>>, Integer, Hash)> domains_get_with_http_info

```ruby
begin
  # Load Domains
  data, status_code, headers = api_instance.domains_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DomainDetail>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DomainDetail&gt;**](DomainDetail.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## domains_post

> <DomainDetail> domains_post(domain_payload)

Add Domain

Add new domain to Account. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::DomainsApi.new
domain_payload = ElasticEmail::DomainPayload.new # DomainPayload | Domain to add

begin
  # Add Domain
  result = api_instance.domains_post(domain_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_post: #{e}"
end
```

#### Using the domains_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDetail>, Integer, Hash)> domains_post_with_http_info(domain_payload)

```ruby
begin
  # Add Domain
  data, status_code, headers = api_instance.domains_post_with_http_info(domain_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDetail>
rescue ElasticEmail::ApiError => e
  puts "Error when calling DomainsApi->domains_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_payload** | [**DomainPayload**](DomainPayload.md) | Domain to add |  |

### Return type

[**DomainDetail**](DomainDetail.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

