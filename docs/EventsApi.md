# ElasticEmail::EventsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_by_transactionid_get**](EventsApi.md#events_by_transactionid_get) | **GET** /events/{transactionid} | Load Email Events |
| [**events_channels_by_name_export_post**](EventsApi.md#events_channels_by_name_export_post) | **POST** /events/channels/{name}/export | Export Channel Events |
| [**events_channels_by_name_get**](EventsApi.md#events_channels_by_name_get) | **GET** /events/channels/{name} | Load Channel Events |
| [**events_channels_export_by_id_status_get**](EventsApi.md#events_channels_export_by_id_status_get) | **GET** /events/channels/export/{id}/status | Check Channel Export Status |
| [**events_export_by_id_status_get**](EventsApi.md#events_export_by_id_status_get) | **GET** /events/export/{id}/status | Check Export Status |
| [**events_export_post**](EventsApi.md#events_export_post) | **POST** /events/export | Export Events |
| [**events_get**](EventsApi.md#events_get) | **GET** /events | Load Events |


## events_by_transactionid_get

> <Array<RecipientEvent>> events_by_transactionid_get(transactionid, opts)

Load Email Events

Returns a log of delivery events for the specific transaction ID. Required Access Level: ViewReports

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

api_instance = ElasticEmail::EventsApi.new
transactionid = 'TransactionID' # String | ID number of transaction
opts = {
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
  order_by: ElasticEmail::EventsOrderBy::DATE_DESCENDING, # EventsOrderBy | 
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Email Events
  result = api_instance.events_by_transactionid_get(transactionid, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_by_transactionid_get: #{e}"
end
```

#### Using the events_by_transactionid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RecipientEvent>>, Integer, Hash)> events_by_transactionid_get_with_http_info(transactionid, opts)

```ruby
begin
  # Load Email Events
  data, status_code, headers = api_instance.events_by_transactionid_get_with_http_info(transactionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RecipientEvent>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_by_transactionid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactionid** | **String** | ID number of transaction |  |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **order_by** | [**EventsOrderBy**](.md) |  | [optional][default to &#39;DateDescending&#39;] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;RecipientEvent&gt;**](RecipientEvent.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_channels_by_name_export_post

> <ExportLink> events_channels_by_name_export_post(name, opts)

Export Channel Events

Export delivery events log information to the specified file format. Required Access Level: Export

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

api_instance = ElasticEmail::EventsApi.new
name = 'Channel01' # String | Name of selected channel.
opts = {
  event_types: [ElasticEmail::EventType::SUBMISSION], # Array<EventType> | Types of Events to return
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
  file_format: ElasticEmail::ExportFileFormats::CSV, # ExportFileFormats | Format of the exported file
  compression_format: ElasticEmail::CompressionFormat::NONE, # CompressionFormat | FileResponse compression format. None or Zip.
  file_name: 'filename.txt' # String | Name of your file including extension.
}

begin
  # Export Channel Events
  result = api_instance.events_channels_by_name_export_post(name, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_by_name_export_post: #{e}"
end
```

#### Using the events_channels_by_name_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportLink>, Integer, Hash)> events_channels_by_name_export_post_with_http_info(name, opts)

```ruby
begin
  # Export Channel Events
  data, status_code, headers = api_instance.events_channels_by_name_export_post_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportLink>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_by_name_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of selected channel. |  |
| **event_types** | [**Array&lt;EventType&gt;**](EventType.md) | Types of Events to return | [optional] |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **file_format** | [**ExportFileFormats**](.md) | Format of the exported file | [optional][default to &#39;Csv&#39;] |
| **compression_format** | [**CompressionFormat**](.md) | FileResponse compression format. None or Zip. | [optional][default to &#39;None&#39;] |
| **file_name** | **String** | Name of your file including extension. | [optional] |

### Return type

[**ExportLink**](ExportLink.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_channels_by_name_get

> <Array<RecipientEvent>> events_channels_by_name_get(name, opts)

Load Channel Events

Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports

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

api_instance = ElasticEmail::EventsApi.new
name = 'Channel01' # String | Name of selected channel.
opts = {
  event_types: [ElasticEmail::EventType::SUBMISSION], # Array<EventType> | Types of Events to return
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
  order_by: ElasticEmail::EventsOrderBy::DATE_DESCENDING, # EventsOrderBy | 
  limit: 56, # Integer | How many items to load. Maximum for this request is 1000 items
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Channel Events
  result = api_instance.events_channels_by_name_get(name, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_by_name_get: #{e}"
end
```

#### Using the events_channels_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RecipientEvent>>, Integer, Hash)> events_channels_by_name_get_with_http_info(name, opts)

```ruby
begin
  # Load Channel Events
  data, status_code, headers = api_instance.events_channels_by_name_get_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RecipientEvent>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of selected channel. |  |
| **event_types** | [**Array&lt;EventType&gt;**](EventType.md) | Types of Events to return | [optional] |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **order_by** | [**EventsOrderBy**](.md) |  | [optional][default to &#39;DateDescending&#39;] |
| **limit** | **Integer** | How many items to load. Maximum for this request is 1000 items | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;RecipientEvent&gt;**](RecipientEvent.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_channels_export_by_id_status_get

> <ExportStatus> events_channels_export_by_id_status_get(id)

Check Channel Export Status

Check the current status of the channel export. Required Access Level: Export

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

api_instance = ElasticEmail::EventsApi.new
id = 'E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F' # String | ID of the exported file

begin
  # Check Channel Export Status
  result = api_instance.events_channels_export_by_id_status_get(id)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_export_by_id_status_get: #{e}"
end
```

#### Using the events_channels_export_by_id_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportStatus>, Integer, Hash)> events_channels_export_by_id_status_get_with_http_info(id)

```ruby
begin
  # Check Channel Export Status
  data, status_code, headers = api_instance.events_channels_export_by_id_status_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportStatus>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_channels_export_by_id_status_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the exported file |  |

### Return type

[**ExportStatus**](ExportStatus.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_export_by_id_status_get

> <ExportStatus> events_export_by_id_status_get(id)

Check Export Status

Check the current status of the export. Required Access Level: Export

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

api_instance = ElasticEmail::EventsApi.new
id = 'E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F' # String | ID of the exported file

begin
  # Check Export Status
  result = api_instance.events_export_by_id_status_get(id)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_export_by_id_status_get: #{e}"
end
```

#### Using the events_export_by_id_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportStatus>, Integer, Hash)> events_export_by_id_status_get_with_http_info(id)

```ruby
begin
  # Check Export Status
  data, status_code, headers = api_instance.events_export_by_id_status_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportStatus>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_export_by_id_status_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the exported file |  |

### Return type

[**ExportStatus**](ExportStatus.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_export_post

> <ExportLink> events_export_post(opts)

Export Events

Export delivery events log information to the specified file format. Required Access Level: Export

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

api_instance = ElasticEmail::EventsApi.new
opts = {
  event_types: [ElasticEmail::EventType::SUBMISSION], # Array<EventType> | Types of Events to return
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
  file_format: ElasticEmail::ExportFileFormats::CSV, # ExportFileFormats | Format of the exported file
  compression_format: ElasticEmail::CompressionFormat::NONE, # CompressionFormat | FileResponse compression format. None or Zip.
  file_name: 'filename.txt' # String | Name of your file including extension.
}

begin
  # Export Events
  result = api_instance.events_export_post(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_export_post: #{e}"
end
```

#### Using the events_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportLink>, Integer, Hash)> events_export_post_with_http_info(opts)

```ruby
begin
  # Export Events
  data, status_code, headers = api_instance.events_export_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportLink>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_types** | [**Array&lt;EventType&gt;**](EventType.md) | Types of Events to return | [optional] |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **file_format** | [**ExportFileFormats**](.md) | Format of the exported file | [optional][default to &#39;Csv&#39;] |
| **compression_format** | [**CompressionFormat**](.md) | FileResponse compression format. None or Zip. | [optional][default to &#39;None&#39;] |
| **file_name** | **String** | Name of your file including extension. | [optional] |

### Return type

[**ExportLink**](ExportLink.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_get

> <Array<RecipientEvent>> events_get(opts)

Load Events

Returns a log of delivery events filtered by specified parameters. Required Access Level: ViewReports

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

api_instance = ElasticEmail::EventsApi.new
opts = {
  event_types: [ElasticEmail::EventType::SUBMISSION], # Array<EventType> | Types of Events to return
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
  order_by: ElasticEmail::EventsOrderBy::DATE_DESCENDING, # EventsOrderBy | 
  limit: 56, # Integer | How many items to load. Maximum for this request is 1000 items
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Events
  result = api_instance.events_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_get: #{e}"
end
```

#### Using the events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RecipientEvent>>, Integer, Hash)> events_get_with_http_info(opts)

```ruby
begin
  # Load Events
  data, status_code, headers = api_instance.events_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RecipientEvent>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling EventsApi->events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_types** | [**Array&lt;EventType&gt;**](EventType.md) | Types of Events to return | [optional] |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **order_by** | [**EventsOrderBy**](.md) |  | [optional][default to &#39;DateDescending&#39;] |
| **limit** | **Integer** | How many items to load. Maximum for this request is 1000 items | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;RecipientEvent&gt;**](RecipientEvent.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

