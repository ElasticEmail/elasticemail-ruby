# ElasticEmail::ListsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**lists_by_listname_contacts_get**](ListsApi.md#lists_by_listname_contacts_get) | **GET** /lists/{listname}/contacts | Load Contacts in List |
| [**lists_by_name_contacts_post**](ListsApi.md#lists_by_name_contacts_post) | **POST** /lists/{name}/contacts | Add Contacts to List |
| [**lists_by_name_contacts_remove_post**](ListsApi.md#lists_by_name_contacts_remove_post) | **POST** /lists/{name}/contacts/remove | Remove Contacts from List |
| [**lists_by_name_delete**](ListsApi.md#lists_by_name_delete) | **DELETE** /lists/{name} | Delete List |
| [**lists_by_name_get**](ListsApi.md#lists_by_name_get) | **GET** /lists/{name} | Load List |
| [**lists_by_name_put**](ListsApi.md#lists_by_name_put) | **PUT** /lists/{name} | Update List |
| [**lists_get**](ListsApi.md#lists_get) | **GET** /lists | Load Lists |
| [**lists_post**](ListsApi.md#lists_post) | **POST** /lists | Add List |


## lists_by_listname_contacts_get

> <Array<Contact>> lists_by_listname_contacts_get(listname, opts)

Load Contacts in List

Returns a list of contacts. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::ListsApi.new
listname = 'My List 1' # String | Name of your list.
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Contacts in List
  result = api_instance.lists_by_listname_contacts_get(listname, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_listname_contacts_get: #{e}"
end
```

#### Using the lists_by_listname_contacts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Contact>>, Integer, Hash)> lists_by_listname_contacts_get_with_http_info(listname, opts)

```ruby
begin
  # Load Contacts in List
  data, status_code, headers = api_instance.lists_by_listname_contacts_get_with_http_info(listname, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Contact>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_listname_contacts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listname** | **String** | Name of your list. |  |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Contact&gt;**](Contact.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lists_by_name_contacts_post

> <ContactsList> lists_by_name_contacts_post(name, emails_payload)

Add Contacts to List

Add existing Contacts to specified list. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ListsApi.new
name = 'My List 1' # String | Name of your list.
emails_payload = ElasticEmail::EmailsPayload.new # EmailsPayload | Provide either rule or a list of emails, not both.

begin
  # Add Contacts to List
  result = api_instance.lists_by_name_contacts_post(name, emails_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_contacts_post: #{e}"
end
```

#### Using the lists_by_name_contacts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactsList>, Integer, Hash)> lists_by_name_contacts_post_with_http_info(name, emails_payload)

```ruby
begin
  # Add Contacts to List
  data, status_code, headers = api_instance.lists_by_name_contacts_post_with_http_info(name, emails_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactsList>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_contacts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your list. |  |
| **emails_payload** | [**EmailsPayload**](EmailsPayload.md) | Provide either rule or a list of emails, not both. |  |

### Return type

[**ContactsList**](ContactsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## lists_by_name_contacts_remove_post

> lists_by_name_contacts_remove_post(name, emails_payload)

Remove Contacts from List

Remove specified Contacts from your list. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ListsApi.new
name = 'My List 1' # String | Name of your list.
emails_payload = ElasticEmail::EmailsPayload.new # EmailsPayload | Provide either rule or a list of emails, not both.

begin
  # Remove Contacts from List
  api_instance.lists_by_name_contacts_remove_post(name, emails_payload)
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_contacts_remove_post: #{e}"
end
```

#### Using the lists_by_name_contacts_remove_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> lists_by_name_contacts_remove_post_with_http_info(name, emails_payload)

```ruby
begin
  # Remove Contacts from List
  data, status_code, headers = api_instance.lists_by_name_contacts_remove_post_with_http_info(name, emails_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_contacts_remove_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your list. |  |
| **emails_payload** | [**EmailsPayload**](EmailsPayload.md) | Provide either rule or a list of emails, not both. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## lists_by_name_delete

> lists_by_name_delete(name)

Delete List

Deletes List and removes all the Contacts from it (does not delete Contacts). Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ListsApi.new
name = 'My List 1' # String | Name of your list.

begin
  # Delete List
  api_instance.lists_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_delete: #{e}"
end
```

#### Using the lists_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> lists_by_name_delete_with_http_info(name)

```ruby
begin
  # Delete List
  data, status_code, headers = api_instance.lists_by_name_delete_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your list. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## lists_by_name_get

> <ContactsList> lists_by_name_get(name)

Load List

Returns detailed information about specified list. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::ListsApi.new
name = 'My List 1' # String | Name of your list.

begin
  # Load List
  result = api_instance.lists_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_get: #{e}"
end
```

#### Using the lists_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactsList>, Integer, Hash)> lists_by_name_get_with_http_info(name)

```ruby
begin
  # Load List
  data, status_code, headers = api_instance.lists_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactsList>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your list. |  |

### Return type

[**ContactsList**](ContactsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lists_by_name_put

> <ContactsList> lists_by_name_put(name, list_update_payload)

Update List

Update existing list. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ListsApi.new
name = 'My List 1' # String | Name of your list.
list_update_payload = ElasticEmail::ListUpdatePayload.new # ListUpdatePayload | 

begin
  # Update List
  result = api_instance.lists_by_name_put(name, list_update_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_put: #{e}"
end
```

#### Using the lists_by_name_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactsList>, Integer, Hash)> lists_by_name_put_with_http_info(name, list_update_payload)

```ruby
begin
  # Update List
  data, status_code, headers = api_instance.lists_by_name_put_with_http_info(name, list_update_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactsList>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_by_name_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your list. |  |
| **list_update_payload** | [**ListUpdatePayload**](ListUpdatePayload.md) |  |  |

### Return type

[**ContactsList**](ContactsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## lists_get

> <Array<ContactsList>> lists_get(opts)

Load Lists

Returns all your existing lists. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::ListsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Lists
  result = api_instance.lists_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_get: #{e}"
end
```

#### Using the lists_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContactsList>>, Integer, Hash)> lists_get_with_http_info(opts)

```ruby
begin
  # Load Lists
  data, status_code, headers = api_instance.lists_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContactsList>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;ContactsList&gt;**](ContactsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lists_post

> <ContactsList> lists_post(list_payload)

Add List

Add a new list. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ListsApi.new
list_payload = ElasticEmail::ListPayload.new({list_name: 'My List 1'}) # ListPayload | 

begin
  # Add List
  result = api_instance.lists_post(list_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_post: #{e}"
end
```

#### Using the lists_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactsList>, Integer, Hash)> lists_post_with_http_info(list_payload)

```ruby
begin
  # Add List
  data, status_code, headers = api_instance.lists_post_with_http_info(list_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactsList>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ListsApi->lists_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_payload** | [**ListPayload**](ListPayload.md) |  |  |

### Return type

[**ContactsList**](ContactsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

