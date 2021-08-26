# ElasticEmail::TemplatesApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**templates_by_name_delete**](TemplatesApi.md#templates_by_name_delete) | **DELETE** /templates/{name} | Delete Template |
| [**templates_by_name_get**](TemplatesApi.md#templates_by_name_get) | **GET** /templates/{name} | Load Template |
| [**templates_by_name_put**](TemplatesApi.md#templates_by_name_put) | **PUT** /templates/{name} | Update Template |
| [**templates_get**](TemplatesApi.md#templates_get) | **GET** /templates | Load Templates |
| [**templates_post**](TemplatesApi.md#templates_post) | **POST** /templates | Add Template |


## templates_by_name_delete

> templates_by_name_delete(name)

Delete Template

Delete template with the specified name. Required Access Level: ModifyTemplates

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

api_instance = ElasticEmail::TemplatesApi.new
name = 'Template01' # String | Name of template.

begin
  # Delete Template
  api_instance.templates_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_delete: #{e}"
end
```

#### Using the templates_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> templates_by_name_delete_with_http_info(name)

```ruby
begin
  # Delete Template
  data, status_code, headers = api_instance.templates_by_name_delete_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of template. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## templates_by_name_get

> <Template> templates_by_name_get(name)

Load Template

Load detailed information of the specified template. Required Access Level: ViewTemplates

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

api_instance = ElasticEmail::TemplatesApi.new
name = 'Template01' # String | Name of template.

begin
  # Load Template
  result = api_instance.templates_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_get: #{e}"
end
```

#### Using the templates_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> templates_by_name_get_with_http_info(name)

```ruby
begin
  # Load Template
  data, status_code, headers = api_instance.templates_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of template. |  |

### Return type

[**Template**](Template.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_by_name_put

> <Template> templates_by_name_put(name, template_payload)

Update Template

Update existing template, overwriting existing data. Required Access Level: ModifyTemplates

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

api_instance = ElasticEmail::TemplatesApi.new
name = 'Template01' # String | Name of template.
template_payload = ElasticEmail::TemplatePayload.new({name: 'name_example'}) # TemplatePayload | 

begin
  # Update Template
  result = api_instance.templates_by_name_put(name, template_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_put: #{e}"
end
```

#### Using the templates_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> templates_by_name_put_with_http_info(name, template_payload)

```ruby
begin
  # Update Template
  data, status_code, headers = api_instance.templates_by_name_put_with_http_info(name, template_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of template. |  |
| **template_payload** | [**TemplatePayload**](TemplatePayload.md) |  |  |

### Return type

[**Template**](Template.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_get

> <Array<Template>> templates_get(scope_type, opts)

Load Templates

Returns a list of templates for the specified type. Required Access Level: ViewTemplates

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

api_instance = ElasticEmail::TemplatesApi.new
scope_type = [ElasticEmail::TemplateScope::PERSONAL] # Array<TemplateScope> | Return templates with specified scope only
opts = {
  template_types: [ElasticEmail::TemplateType::RAW_HTML], # Array<TemplateType> | Return templates with specified type only
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Templates
  result = api_instance.templates_get(scope_type, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_get: #{e}"
end
```

#### Using the templates_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Template>>, Integer, Hash)> templates_get_with_http_info(scope_type, opts)

```ruby
begin
  # Load Templates
  data, status_code, headers = api_instance.templates_get_with_http_info(scope_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Template>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope_type** | [**Array&lt;TemplateScope&gt;**](TemplateScope.md) | Return templates with specified scope only |  |
| **template_types** | [**Array&lt;TemplateType&gt;**](TemplateType.md) | Return templates with specified type only | [optional] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Template&gt;**](Template.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_post

> <Template> templates_post(template_payload)

Add Template

Add a new Template. Required Access Level: ModifyTemplates

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

api_instance = ElasticEmail::TemplatesApi.new
template_payload = ElasticEmail::TemplatePayload.new({name: 'name_example'}) # TemplatePayload | 

begin
  # Add Template
  result = api_instance.templates_post(template_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_post: #{e}"
end
```

#### Using the templates_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> templates_post_with_http_info(template_payload)

```ruby
begin
  # Add Template
  data, status_code, headers = api_instance.templates_post_with_http_info(template_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ElasticEmail::ApiError => e
  puts "Error when calling TemplatesApi->templates_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_payload** | [**TemplatePayload**](TemplatePayload.md) |  |  |

### Return type

[**Template**](Template.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

