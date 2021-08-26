# ElasticEmail::SegmentsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**segments_by_name_delete**](SegmentsApi.md#segments_by_name_delete) | **DELETE** /segments/{name} | Delete Segment |
| [**segments_by_name_get**](SegmentsApi.md#segments_by_name_get) | **GET** /segments/{name} | Load Segment |
| [**segments_by_name_put**](SegmentsApi.md#segments_by_name_put) | **PUT** /segments/{name} | Update Segment |
| [**segments_get**](SegmentsApi.md#segments_get) | **GET** /segments | Load Segments |
| [**segments_post**](SegmentsApi.md#segments_post) | **POST** /segments | Add Segment |


## segments_by_name_delete

> segments_by_name_delete(name)

Delete Segment

Delete an existing segment. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::SegmentsApi.new
name = 'My Segment 1' # String | Name of your segment.

begin
  # Delete Segment
  api_instance.segments_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_delete: #{e}"
end
```

#### Using the segments_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> segments_by_name_delete_with_http_info(name)

```ruby
begin
  # Delete Segment
  data, status_code, headers = api_instance.segments_by_name_delete_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your segment. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## segments_by_name_get

> <Segment> segments_by_name_get(name)

Load Segment

Returns details for the specified segment. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::SegmentsApi.new
name = 'name_example' # String | Name of the segment you want to load. Will load all contacts if the 'All Contacts' name has been provided

begin
  # Load Segment
  result = api_instance.segments_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_get: #{e}"
end
```

#### Using the segments_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Segment>, Integer, Hash)> segments_by_name_get_with_http_info(name)

```ruby
begin
  # Load Segment
  data, status_code, headers = api_instance.segments_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Segment>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the segment you want to load. Will load all contacts if the &#39;All Contacts&#39; name has been provided |  |

### Return type

[**Segment**](Segment.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## segments_by_name_put

> <Segment> segments_by_name_put(name, segment_payload)

Update Segment

Rename or change RULE for your segment. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::SegmentsApi.new
name = 'My Segment 1' # String | Name of your segment.
segment_payload = ElasticEmail::SegmentPayload.new({name: 'name_example', rule: 'rule_example'}) # SegmentPayload | 

begin
  # Update Segment
  result = api_instance.segments_by_name_put(name, segment_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_put: #{e}"
end
```

#### Using the segments_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Segment>, Integer, Hash)> segments_by_name_put_with_http_info(name, segment_payload)

```ruby
begin
  # Update Segment
  data, status_code, headers = api_instance.segments_by_name_put_with_http_info(name, segment_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Segment>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your segment. |  |
| **segment_payload** | [**SegmentPayload**](SegmentPayload.md) |  |  |

### Return type

[**Segment**](Segment.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## segments_get

> <Array<Segment>> segments_get(opts)

Load Segments

Returns a list of all your available Segments. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::SegmentsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Segments
  result = api_instance.segments_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_get: #{e}"
end
```

#### Using the segments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Segment>>, Integer, Hash)> segments_get_with_http_info(opts)

```ruby
begin
  # Load Segments
  data, status_code, headers = api_instance.segments_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Segment>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Segment&gt;**](Segment.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## segments_post

> <Segment> segments_post(segment_payload)

Add Segment

Add a new segment, based on specified RULE. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::SegmentsApi.new
segment_payload = ElasticEmail::SegmentPayload.new({name: 'name_example', rule: 'rule_example'}) # SegmentPayload | 

begin
  # Add Segment
  result = api_instance.segments_post(segment_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_post: #{e}"
end
```

#### Using the segments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Segment>, Integer, Hash)> segments_post_with_http_info(segment_payload)

```ruby
begin
  # Add Segment
  data, status_code, headers = api_instance.segments_post_with_http_info(segment_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Segment>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SegmentsApi->segments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_payload** | [**SegmentPayload**](SegmentPayload.md) |  |  |

### Return type

[**Segment**](Segment.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

