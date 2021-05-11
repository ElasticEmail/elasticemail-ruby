# ElasticEmail::StatisticsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**statistics_campaigns_by_name_get**](StatisticsApi.md#statistics_campaigns_by_name_get) | **GET** /statistics/campaigns/{name} | Load Campaign Stats |
| [**statistics_campaigns_get**](StatisticsApi.md#statistics_campaigns_get) | **GET** /statistics/campaigns | Load Campaigns Stats |
| [**statistics_channels_by_name_get**](StatisticsApi.md#statistics_channels_by_name_get) | **GET** /statistics/channels/{name} | Load Channel Stats |
| [**statistics_channels_get**](StatisticsApi.md#statistics_channels_get) | **GET** /statistics/channels | Load Channels Stats |
| [**statistics_get**](StatisticsApi.md#statistics_get) | **GET** /statistics | Load Statistics |


## statistics_campaigns_by_name_get

> <ChannelLogStatusSummary> statistics_campaigns_by_name_get(name)

Load Campaign Stats

Retrieve stats of an existing campaign. Required Access Level: ViewChannels

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

api_instance = ElasticEmail::StatisticsApi.new
name = 'name_example' # String | The name of the campaign to get.

begin
  # Load Campaign Stats
  result = api_instance.statistics_campaigns_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_campaigns_by_name_get: #{e}"
end
```

#### Using the statistics_campaigns_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChannelLogStatusSummary>, Integer, Hash)> statistics_campaigns_by_name_get_with_http_info(name)

```ruby
begin
  # Load Campaign Stats
  data, status_code, headers = api_instance.statistics_campaigns_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChannelLogStatusSummary>
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_campaigns_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the campaign to get. |  |

### Return type

[**ChannelLogStatusSummary**](ChannelLogStatusSummary.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_campaigns_get

> <Array<ChannelLogStatusSummary>> statistics_campaigns_get(opts)

Load Campaigns Stats

Returns a list of your Campaigns' stats. Required Access Level: ViewChannels

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

api_instance = ElasticEmail::StatisticsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Campaigns Stats
  result = api_instance.statistics_campaigns_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_campaigns_get: #{e}"
end
```

#### Using the statistics_campaigns_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChannelLogStatusSummary>>, Integer, Hash)> statistics_campaigns_get_with_http_info(opts)

```ruby
begin
  # Load Campaigns Stats
  data, status_code, headers = api_instance.statistics_campaigns_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChannelLogStatusSummary>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_campaigns_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;ChannelLogStatusSummary&gt;**](ChannelLogStatusSummary.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_channels_by_name_get

> <ChannelLogStatusSummary> statistics_channels_by_name_get(name)

Load Channel Stats

Retrieve an existing channel stats. Required Access Level: ViewChannels

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

api_instance = ElasticEmail::StatisticsApi.new
name = 'name_example' # String | The name of the channel to get.

begin
  # Load Channel Stats
  result = api_instance.statistics_channels_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_channels_by_name_get: #{e}"
end
```

#### Using the statistics_channels_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChannelLogStatusSummary>, Integer, Hash)> statistics_channels_by_name_get_with_http_info(name)

```ruby
begin
  # Load Channel Stats
  data, status_code, headers = api_instance.statistics_channels_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChannelLogStatusSummary>
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_channels_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the channel to get. |  |

### Return type

[**ChannelLogStatusSummary**](ChannelLogStatusSummary.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_channels_get

> <Array<ChannelLogStatusSummary>> statistics_channels_get(opts)

Load Channels Stats

Returns a list of your Channels' stats. Required Access Level: ViewChannels

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

api_instance = ElasticEmail::StatisticsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Channels Stats
  result = api_instance.statistics_channels_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_channels_get: #{e}"
end
```

#### Using the statistics_channels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChannelLogStatusSummary>>, Integer, Hash)> statistics_channels_get_with_http_info(opts)

```ruby
begin
  # Load Channels Stats
  data, status_code, headers = api_instance.statistics_channels_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChannelLogStatusSummary>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_channels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;ChannelLogStatusSummary&gt;**](ChannelLogStatusSummary.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_get

> <LogStatusSummary> statistics_get(from, opts)

Load Statistics

Returns basic statistics. Required Access Level: ViewReports

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

api_instance = ElasticEmail::StatisticsApi.new
from = Time.parse('2013-10-20T19:20:30+01:00') # Time | Starting date for search in YYYY-MM-DDThh:mm:ss format.
opts = {
  to: Time.parse('2013-10-20T19:20:30+01:00') # Time | Ending date for search in YYYY-MM-DDThh:mm:ss format.
}

begin
  # Load Statistics
  result = api_instance.statistics_get(from, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_get: #{e}"
end
```

#### Using the statistics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogStatusSummary>, Integer, Hash)> statistics_get_with_http_info(from, opts)

```ruby
begin
  # Load Statistics
  data, status_code, headers = api_instance.statistics_get_with_http_info(from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogStatusSummary>
rescue ElasticEmail::ApiError => e
  puts "Error when calling StatisticsApi->statistics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | Starting date for search in YYYY-MM-DDThh:mm:ss format. |  |
| **to** | **Time** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |

### Return type

[**LogStatusSummary**](LogStatusSummary.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

