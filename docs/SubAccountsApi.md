# ElasticEmail::SubAccountsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**subaccounts_by_email_credits_patch**](SubAccountsApi.md#subaccounts_by_email_credits_patch) | **PATCH** /subaccounts/{email}/credits | Add, Subtract Email Credits |
| [**subaccounts_by_email_delete**](SubAccountsApi.md#subaccounts_by_email_delete) | **DELETE** /subaccounts/{email} | Delete SubAccount |
| [**subaccounts_by_email_get**](SubAccountsApi.md#subaccounts_by_email_get) | **GET** /subaccounts/{email} | Load SubAccount |
| [**subaccounts_by_email_settings_email_put**](SubAccountsApi.md#subaccounts_by_email_settings_email_put) | **PUT** /subaccounts/{email}/settings/email | Update SubAccount Email Settings |
| [**subaccounts_get**](SubAccountsApi.md#subaccounts_get) | **GET** /subaccounts | Load SubAccounts |
| [**subaccounts_post**](SubAccountsApi.md#subaccounts_post) | **POST** /subaccounts | Add SubAccount |


## subaccounts_by_email_credits_patch

> subaccounts_by_email_credits_patch(email, subaccount_email_credits_payload)

Add, Subtract Email Credits

Update email credits of a subaccount by the given amount. Required Access Level: ModifySubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
email = 'mail@example.com' # String | Email address of Sub-Account
subaccount_email_credits_payload = ElasticEmail::SubaccountEmailCreditsPayload.new({credits: 37}) # SubaccountEmailCreditsPayload | Amount of email credits to add or subtract from the current SubAccount email credits pool (positive or negative value)

begin
  # Add, Subtract Email Credits
  api_instance.subaccounts_by_email_credits_patch(email, subaccount_email_credits_payload)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_credits_patch: #{e}"
end
```

#### Using the subaccounts_by_email_credits_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subaccounts_by_email_credits_patch_with_http_info(email, subaccount_email_credits_payload)

```ruby
begin
  # Add, Subtract Email Credits
  data, status_code, headers = api_instance.subaccounts_by_email_credits_patch_with_http_info(email, subaccount_email_credits_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_credits_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of Sub-Account |  |
| **subaccount_email_credits_payload** | [**SubaccountEmailCreditsPayload**](SubaccountEmailCreditsPayload.md) | Amount of email credits to add or subtract from the current SubAccount email credits pool (positive or negative value) |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## subaccounts_by_email_delete

> subaccounts_by_email_delete(email)

Delete SubAccount

Deletes specified SubAccount. An email will be sent to confirm this change. Required Access Level: ModifySubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
email = 'mail@example.com' # String | Email address of Sub-Account

begin
  # Delete SubAccount
  api_instance.subaccounts_by_email_delete(email)
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_delete: #{e}"
end
```

#### Using the subaccounts_by_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subaccounts_by_email_delete_with_http_info(email)

```ruby
begin
  # Delete SubAccount
  data, status_code, headers = api_instance.subaccounts_by_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of Sub-Account |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## subaccounts_by_email_get

> <SubAccountInfo> subaccounts_by_email_get(email)

Load SubAccount

Returns details for the specified SubAccount. Required Access Level: ViewSubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
email = 'mail@example.com' # String | Email address of Sub-Account

begin
  # Load SubAccount
  result = api_instance.subaccounts_by_email_get(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_get: #{e}"
end
```

#### Using the subaccounts_by_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubAccountInfo>, Integer, Hash)> subaccounts_by_email_get_with_http_info(email)

```ruby
begin
  # Load SubAccount
  data, status_code, headers = api_instance.subaccounts_by_email_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubAccountInfo>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of Sub-Account |  |

### Return type

[**SubAccountInfo**](SubAccountInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subaccounts_by_email_settings_email_put

> <SubaccountEmailSettings> subaccounts_by_email_settings_email_put(email, subaccount_email_settings)

Update SubAccount Email Settings

Update SubAccount email settings. Required Access Level: ModifySubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
email = 'email_example' # String | 
subaccount_email_settings = ElasticEmail::SubaccountEmailSettings.new # SubaccountEmailSettings | Updated Email Settings

begin
  # Update SubAccount Email Settings
  result = api_instance.subaccounts_by_email_settings_email_put(email, subaccount_email_settings)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_settings_email_put: #{e}"
end
```

#### Using the subaccounts_by_email_settings_email_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubaccountEmailSettings>, Integer, Hash)> subaccounts_by_email_settings_email_put_with_http_info(email, subaccount_email_settings)

```ruby
begin
  # Update SubAccount Email Settings
  data, status_code, headers = api_instance.subaccounts_by_email_settings_email_put_with_http_info(email, subaccount_email_settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubaccountEmailSettings>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_by_email_settings_email_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **subaccount_email_settings** | [**SubaccountEmailSettings**](SubaccountEmailSettings.md) | Updated Email Settings |  |

### Return type

[**SubaccountEmailSettings**](SubaccountEmailSettings.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subaccounts_get

> <Array<SubAccountInfo>> subaccounts_get(opts)

Load SubAccounts

Returns a list of all your SubAccounts. Required Access Level: ViewSubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load SubAccounts
  result = api_instance.subaccounts_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_get: #{e}"
end
```

#### Using the subaccounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SubAccountInfo>>, Integer, Hash)> subaccounts_get_with_http_info(opts)

```ruby
begin
  # Load SubAccounts
  data, status_code, headers = api_instance.subaccounts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SubAccountInfo>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;SubAccountInfo&gt;**](SubAccountInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subaccounts_post

> <SubAccountInfo> subaccounts_post(subaccount_payload)

Add SubAccount

Add a new SubAccount to your Account. To receive an access token for this SubAccount, make a POST security/apikeys request using the 'subaccount' parameter. Required Access Level: ModifySubAccounts

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

api_instance = ElasticEmail::SubAccountsApi.new
subaccount_payload = ElasticEmail::SubaccountPayload.new({email: 'mail@example.com', password: '********'}) # SubaccountPayload | 

begin
  # Add SubAccount
  result = api_instance.subaccounts_post(subaccount_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_post: #{e}"
end
```

#### Using the subaccounts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubAccountInfo>, Integer, Hash)> subaccounts_post_with_http_info(subaccount_payload)

```ruby
begin
  # Add SubAccount
  data, status_code, headers = api_instance.subaccounts_post_with_http_info(subaccount_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubAccountInfo>
rescue ElasticEmail::ApiError => e
  puts "Error when calling SubAccountsApi->subaccounts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subaccount_payload** | [**SubaccountPayload**](SubaccountPayload.md) |  |  |

### Return type

[**SubAccountInfo**](SubAccountInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

