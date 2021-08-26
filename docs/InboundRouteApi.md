# ElasticEmail::InboundRouteApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**inboundroute_by_id_delete**](InboundRouteApi.md#inboundroute_by_id_delete) | **DELETE** /inboundroute/{id} | Delete Route |
| [**inboundroute_by_id_get**](InboundRouteApi.md#inboundroute_by_id_get) | **GET** /inboundroute/{id} | Get Route |
| [**inboundroute_by_id_put**](InboundRouteApi.md#inboundroute_by_id_put) | **PUT** /inboundroute/{id} | Update Route |
| [**inboundroute_get**](InboundRouteApi.md#inboundroute_get) | **GET** /inboundroute | Get Routes |
| [**inboundroute_order_put**](InboundRouteApi.md#inboundroute_order_put) | **PUT** /inboundroute/order | Update Sorting |
| [**inboundroute_post**](InboundRouteApi.md#inboundroute_post) | **POST** /inboundroute | Create Route |


## inboundroute_by_id_delete

> inboundroute_by_id_delete(id)

Delete Route

Deletes the Inbound Route. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::InboundRouteApi.new
id = 'id_example' # String | 

begin
  # Delete Route
  api_instance.inboundroute_by_id_delete(id)
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_delete: #{e}"
end
```

#### Using the inboundroute_by_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> inboundroute_by_id_delete_with_http_info(id)

```ruby
begin
  # Delete Route
  data, status_code, headers = api_instance.inboundroute_by_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## inboundroute_by_id_get

> <InboundRoute> inboundroute_by_id_get(id)

Get Route

Load an Inbound Route. Required Access Level: ViewSettings

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

api_instance = ElasticEmail::InboundRouteApi.new
id = '123456' # String | ID number of your attachment

begin
  # Get Route
  result = api_instance.inboundroute_by_id_get(id)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_get: #{e}"
end
```

#### Using the inboundroute_by_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboundRoute>, Integer, Hash)> inboundroute_by_id_get_with_http_info(id)

```ruby
begin
  # Get Route
  data, status_code, headers = api_instance.inboundroute_by_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboundRoute>
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID number of your attachment |  |

### Return type

[**InboundRoute**](InboundRoute.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## inboundroute_by_id_put

> <InboundRoute> inboundroute_by_id_put(id, inbound_payload)

Update Route

Update the Inbound Route. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::InboundRouteApi.new
id = 'id_example' # String | 
inbound_payload = ElasticEmail::InboundPayload.new({filter: 'filter_example', name: 'name_example', filter_type: ElasticEmail::InboundRouteFilterType::EMAIL_ADDRESS, action_type: ElasticEmail::InboundRouteActionType::FORWARD_TO_EMAIL}) # InboundPayload | 

begin
  # Update Route
  result = api_instance.inboundroute_by_id_put(id, inbound_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_put: #{e}"
end
```

#### Using the inboundroute_by_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboundRoute>, Integer, Hash)> inboundroute_by_id_put_with_http_info(id, inbound_payload)

```ruby
begin
  # Update Route
  data, status_code, headers = api_instance.inboundroute_by_id_put_with_http_info(id, inbound_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboundRoute>
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_by_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **inbound_payload** | [**InboundPayload**](InboundPayload.md) |  |  |

### Return type

[**InboundRoute**](InboundRoute.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inboundroute_get

> <Array<InboundRoute>> inboundroute_get

Get Routes

Get all your Inbound Routes. Required Access Level: ViewSettings

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

api_instance = ElasticEmail::InboundRouteApi.new

begin
  # Get Routes
  result = api_instance.inboundroute_get
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_get: #{e}"
end
```

#### Using the inboundroute_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<InboundRoute>>, Integer, Hash)> inboundroute_get_with_http_info

```ruby
begin
  # Get Routes
  data, status_code, headers = api_instance.inboundroute_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<InboundRoute>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;InboundRoute&gt;**](InboundRoute.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## inboundroute_order_put

> <Array<InboundRoute>> inboundroute_order_put(sort_order_item)

Update Sorting

Required Access Level: ViewSettings

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

api_instance = ElasticEmail::InboundRouteApi.new
sort_order_item = [ElasticEmail::SortOrderItem.new({public_inbound_id: 'public_inbound_id_example', sort_order: 37})] # Array<SortOrderItem> | Change the ordering of inbound routes for when matching the inbound

begin
  # Update Sorting
  result = api_instance.inboundroute_order_put(sort_order_item)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_order_put: #{e}"
end
```

#### Using the inboundroute_order_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<InboundRoute>>, Integer, Hash)> inboundroute_order_put_with_http_info(sort_order_item)

```ruby
begin
  # Update Sorting
  data, status_code, headers = api_instance.inboundroute_order_put_with_http_info(sort_order_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<InboundRoute>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_order_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort_order_item** | [**Array&lt;SortOrderItem&gt;**](SortOrderItem.md) | Change the ordering of inbound routes for when matching the inbound |  |

### Return type

[**Array&lt;InboundRoute&gt;**](InboundRoute.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inboundroute_post

> <InboundRoute> inboundroute_post(inbound_payload)

Create Route

Create new Inbound Route. Required Access Level: ModifySettings

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

api_instance = ElasticEmail::InboundRouteApi.new
inbound_payload = ElasticEmail::InboundPayload.new({filter: 'filter_example', name: 'name_example', filter_type: ElasticEmail::InboundRouteFilterType::EMAIL_ADDRESS, action_type: ElasticEmail::InboundRouteActionType::FORWARD_TO_EMAIL}) # InboundPayload | 

begin
  # Create Route
  result = api_instance.inboundroute_post(inbound_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_post: #{e}"
end
```

#### Using the inboundroute_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboundRoute>, Integer, Hash)> inboundroute_post_with_http_info(inbound_payload)

```ruby
begin
  # Create Route
  data, status_code, headers = api_instance.inboundroute_post_with_http_info(inbound_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboundRoute>
rescue ElasticEmail::ApiError => e
  puts "Error when calling InboundRouteApi->inboundroute_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound_payload** | [**InboundPayload**](InboundPayload.md) |  |  |

### Return type

[**InboundRoute**](InboundRoute.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

