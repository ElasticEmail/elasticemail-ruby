# ElasticEmail::FilesApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**files_by_name_delete**](FilesApi.md#files_by_name_delete) | **DELETE** /files/{name} | Delete File |
| [**files_by_name_get**](FilesApi.md#files_by_name_get) | **GET** /files/{name} | Download File |
| [**files_by_name_info_get**](FilesApi.md#files_by_name_info_get) | **GET** /files/{name}/info | Load File Details |
| [**files_get**](FilesApi.md#files_get) | **GET** /files | List Files |
| [**files_post**](FilesApi.md#files_post) | **POST** /files | Upload File |


## files_by_name_delete

> files_by_name_delete(name)

Delete File

Permanently deletes the file from your Account. Required Access Level: ModifyFiles

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

api_instance = ElasticEmail::FilesApi.new
name = 'filename.txt' # String | Name of your file including extension.

begin
  # Delete File
  api_instance.files_by_name_delete(name)
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_delete: #{e}"
end
```

#### Using the files_by_name_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> files_by_name_delete_with_http_info(name)

```ruby
begin
  # Delete File
  data, status_code, headers = api_instance.files_by_name_delete_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your file including extension. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## files_by_name_get

> File files_by_name_get(name)

Download File

Gets content of the specified File. Required Access Level: ViewFiles

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

api_instance = ElasticEmail::FilesApi.new
name = 'filename.txt' # String | Name of your file including extension.

begin
  # Download File
  result = api_instance.files_by_name_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_get: #{e}"
end
```

#### Using the files_by_name_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> files_by_name_get_with_http_info(name)

```ruby
begin
  # Download File
  data, status_code, headers = api_instance.files_by_name_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your file including extension. |  |

### Return type

**File**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/*


## files_by_name_info_get

> <FileInfo> files_by_name_info_get(name)

Load File Details

Returns the specified File's details. Required Access Level: ViewFiles

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

api_instance = ElasticEmail::FilesApi.new
name = 'filename.txt' # String | Name of your file including extension.

begin
  # Load File Details
  result = api_instance.files_by_name_info_get(name)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_info_get: #{e}"
end
```

#### Using the files_by_name_info_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileInfo>, Integer, Hash)> files_by_name_info_get_with_http_info(name)

```ruby
begin
  # Load File Details
  data, status_code, headers = api_instance.files_by_name_info_get_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileInfo>
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_by_name_info_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of your file including extension. |  |

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_get

> <Array<FileInfo>> files_get(opts)

List Files

Returns a list of all your available files. Required Access Level: ViewFiles

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

api_instance = ElasticEmail::FilesApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # List Files
  result = api_instance.files_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_get: #{e}"
end
```

#### Using the files_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FileInfo>>, Integer, Hash)> files_get_with_http_info(opts)

```ruby
begin
  # List Files
  data, status_code, headers = api_instance.files_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FileInfo>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;FileInfo&gt;**](FileInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_post

> <FileInfo> files_post(file_payload, opts)

Upload File

Uploads selected file to the server. Required Access Level: ModifyFiles

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

api_instance = ElasticEmail::FilesApi.new
file_payload = ElasticEmail::FilePayload.new # FilePayload | 
opts = {
  expires_after_days: 56 # Integer | After how many days should the file be deleted.
}

begin
  # Upload File
  result = api_instance.files_post(file_payload, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_post: #{e}"
end
```

#### Using the files_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileInfo>, Integer, Hash)> files_post_with_http_info(file_payload, opts)

```ruby
begin
  # Upload File
  data, status_code, headers = api_instance.files_post_with_http_info(file_payload, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileInfo>
rescue ElasticEmail::ApiError => e
  puts "Error when calling FilesApi->files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_payload** | [**FilePayload**](FilePayload.md) |  |  |
| **expires_after_days** | **Integer** | After how many days should the file be deleted. | [optional] |

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

