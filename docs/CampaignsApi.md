# ElasticEmail::CampaignsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**campaigns_by_name_delete**](CampaignsApi.md#campaigns_by_name_delete) | **DELETE** /campaigns/{name} | Delete Campaign |
| [**campaigns_by_name_get**](CampaignsApi.md#campaigns_by_name_get) | **GET** /campaigns/{name} | Load Campaign |
| [**campaigns_by_name_pause_put**](CampaignsApi.md#campaigns_by_name_pause_put) | **PUT** /campaigns/{name}/pause | Pause Campaign |
| [**campaigns_by_name_put**](CampaignsApi.md#campaigns_by_name_put) | **PUT** /campaigns/{name} | Update Campaign |
| [**campaigns_get**](CampaignsApi.md#campaigns_get) | **GET** /campaigns | Load Campaigns |
| [**campaigns_post**](CampaignsApi.md#campaigns_post) | **POST** /campaigns | Add Campaign |


## campaigns_by_name_delete

> campaigns_by_name_delete(name)

Delete Campaign

Delete the specific campaign.  This does not cancel in progress email, see Cancel In Progress. Required Access Level: ModifyCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
name = 'name_example' # String | Name of Campaign to delete

begin
  # Delete Campaign
  api_instance.campaigns_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_delete: #{e}"
end
```

#### Using the campaigns_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> campaigns_by_name_delete_with_http_info(name)

```ruby
begin
  # Delete Campaign
  data, status_code, headers = api_instance.campaigns_by_name_delete_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of Campaign to delete |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## campaigns_by_name_get

> <Campaign> campaigns_by_name_get(name)

Load Campaign

Returns the specified campaign details. Required Access Level: ViewCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
name = 'name_example' # String | Name of Campaign to get

begin
  # Load Campaign
  result = api_instance.campaigns_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_get: #{e}"
end
```

#### Using the campaigns_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> campaigns_by_name_get_with_http_info(name)

```ruby
begin
  # Load Campaign
  data, status_code, headers = api_instance.campaigns_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of Campaign to get |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## campaigns_by_name_pause_put

> campaigns_by_name_pause_put(name)

Pause Campaign

Pauses the specific campaign, cancelling emails that are waiting to be sent. Required Access Level: ModifyCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
name = 'name_example' # String | Name of Campaign to pause

begin
  # Pause Campaign
  api_instance.campaigns_by_name_pause_put(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_pause_put: #{e}"
end
```

#### Using the campaigns_by_name_pause_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> campaigns_by_name_pause_put_with_http_info(name)

```ruby
begin
  # Pause Campaign
  data, status_code, headers = api_instance.campaigns_by_name_pause_put_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_pause_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of Campaign to pause |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## campaigns_by_name_put

> <Campaign> campaigns_by_name_put(name, campaign)

Update Campaign

Updates a previously added campaign.  Only Active and Paused campaigns can be updated. Required Access Level: ModifyCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
name = 'name_example' # String | Name of Campaign to update
campaign = ElasticEmail::Campaign.new({name: 'name_example', recipients: ElasticEmail::CampaignRecipient.new}) # Campaign | JSON representation of a campaign

begin
  # Update Campaign
  result = api_instance.campaigns_by_name_put(name, campaign)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_put: #{e}"
end
```

#### Using the campaigns_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> campaigns_by_name_put_with_http_info(name, campaign)

```ruby
begin
  # Update Campaign
  data, status_code, headers = api_instance.campaigns_by_name_put_with_http_info(name, campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of Campaign to update |  |
| **campaign** | [**Campaign**](Campaign.md) | JSON representation of a campaign |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## campaigns_get

> <Array<Campaign>> campaigns_get(opts)

Load Campaigns

Returns a list all of your campaigns. Limited to 1000 results. Required Access Level: ViewCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
opts = {
  search: 'search_example', # String | Text fragment used for searching in Campaign name (using the 'contains' rule)
  offset: 20, # Integer | How many items should be returned ahead.
  limit: 100 # Integer | Maximum number of returned items.
}

begin
  # Load Campaigns
  result = api_instance.campaigns_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_get: #{e}"
end
```

#### Using the campaigns_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Campaign>>, Integer, Hash)> campaigns_get_with_http_info(opts)

```ruby
begin
  # Load Campaigns
  data, status_code, headers = api_instance.campaigns_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Campaign>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Text fragment used for searching in Campaign name (using the &#39;contains&#39; rule) | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |

### Return type

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## campaigns_post

> <Campaign> campaigns_post(campaign)

Add Campaign

Add a campaign for processing. Required Access Level: ModifyCampaigns

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

api_instance = ElasticEmail::CampaignsApi.new
campaign = ElasticEmail::Campaign.new({name: 'name_example', recipients: ElasticEmail::CampaignRecipient.new}) # Campaign | JSON representation of a campaign

begin
  # Add Campaign
  result = api_instance.campaigns_post(campaign)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_post: #{e}"
end
```

#### Using the campaigns_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Campaign>, Integer, Hash)> campaigns_post_with_http_info(campaign)

```ruby
begin
  # Add Campaign
  data, status_code, headers = api_instance.campaigns_post_with_http_info(campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Campaign>
rescue ElasticEmail::ApiError => e
  puts "Error when calling CampaignsApi->campaigns_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign** | [**Campaign**](Campaign.md) | JSON representation of a campaign |  |

### Return type

[**Campaign**](Campaign.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

