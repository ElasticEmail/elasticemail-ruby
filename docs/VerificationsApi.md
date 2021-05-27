# ElasticEmail::VerificationsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verifications_by_email_delete**](VerificationsApi.md#verifications_by_email_delete) | **DELETE** /verifications/{email} | Delete Email Verification Result |
| [**verifications_by_email_get**](VerificationsApi.md#verifications_by_email_get) | **GET** /verifications/{email} | Get Email Verification Result |
| [**verifications_by_email_post**](VerificationsApi.md#verifications_by_email_post) | **POST** /verifications/{email} | Verify Email |
| [**verifications_files_by_id_delete**](VerificationsApi.md#verifications_files_by_id_delete) | **DELETE** /verifications/files/{id} | Delete File Verification Result |
| [**verifications_files_by_id_result_download_get**](VerificationsApi.md#verifications_files_by_id_result_download_get) | **GET** /verifications/files/{id}/result/download | Download File Verification Result |
| [**verifications_files_by_id_result_get**](VerificationsApi.md#verifications_files_by_id_result_get) | **GET** /verifications/files/{id}/result | Get Detailed File Verification Result |
| [**verifications_files_by_id_verification_post**](VerificationsApi.md#verifications_files_by_id_verification_post) | **POST** /verifications/files/{id}/verification | Start verification |
| [**verifications_files_post**](VerificationsApi.md#verifications_files_post) | **POST** /verifications/files | Upload File with Emails |
| [**verifications_files_result_get**](VerificationsApi.md#verifications_files_result_get) | **GET** /verifications/files/result | Get Files Verification Results |
| [**verifications_get**](VerificationsApi.md#verifications_get) | **GET** /verifications | Get Emails Verification Results |


## verifications_by_email_delete

> verifications_by_email_delete(email)

Delete Email Verification Result

Delete a result with given email if exists. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
email = 'email_example' # String | Email address to verification

begin
  # Delete Email Verification Result
  api_instance.verifications_by_email_delete(email)
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_delete: #{e}"
end
```

#### Using the verifications_by_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verifications_by_email_delete_with_http_info(email)

```ruby
begin
  # Delete Email Verification Result
  data, status_code, headers = api_instance.verifications_by_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to verification |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## verifications_by_email_get

> <EmailValidationResult> verifications_by_email_get(email)

Get Email Verification Result

Returns a result of verified email. Required Access Level: ViewEmailVerifications

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

api_instance = ElasticEmail::VerificationsApi.new
email = 'email_example' # String | Email address to view verification result of

begin
  # Get Email Verification Result
  result = api_instance.verifications_by_email_get(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_get: #{e}"
end
```

#### Using the verifications_by_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailValidationResult>, Integer, Hash)> verifications_by_email_get_with_http_info(email)

```ruby
begin
  # Get Email Verification Result
  data, status_code, headers = api_instance.verifications_by_email_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailValidationResult>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to view verification result of |  |

### Return type

[**EmailValidationResult**](EmailValidationResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifications_by_email_post

> <EmailValidationResult> verifications_by_email_post(email)

Verify Email

Verify single email address and returns result of verification. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
email = 'email_example' # String | Email address to verify

begin
  # Verify Email
  result = api_instance.verifications_by_email_post(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_post: #{e}"
end
```

#### Using the verifications_by_email_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailValidationResult>, Integer, Hash)> verifications_by_email_post_with_http_info(email)

```ruby
begin
  # Verify Email
  data, status_code, headers = api_instance.verifications_by_email_post_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailValidationResult>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_by_email_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to verify |  |

### Return type

[**EmailValidationResult**](EmailValidationResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifications_files_by_id_delete

> verifications_files_by_id_delete(id)

Delete File Verification Result

Delete Verification Results if they exist. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
id = 'E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F' # String | ID of the exported file

begin
  # Delete File Verification Result
  api_instance.verifications_files_by_id_delete(id)
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_delete: #{e}"
end
```

#### Using the verifications_files_by_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verifications_files_by_id_delete_with_http_info(id)

```ruby
begin
  # Delete File Verification Result
  data, status_code, headers = api_instance.verifications_files_by_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the exported file |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## verifications_files_by_id_result_download_get

> File verifications_files_by_id_result_download_get(id)

Download File Verification Result

Download verification results as a ZIP file. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
id = 'id_example' # String | Verification ID to download

begin
  # Download File Verification Result
  result = api_instance.verifications_files_by_id_result_download_get(id)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_result_download_get: #{e}"
end
```

#### Using the verifications_files_by_id_result_download_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> verifications_files_by_id_result_download_get_with_http_info(id)

```ruby
begin
  # Download File Verification Result
  data, status_code, headers = api_instance.verifications_files_by_id_result_download_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_result_download_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Verification ID to download |  |

### Return type

**File**

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/*


## verifications_files_by_id_result_get

> <VerificationFileResultDetails> verifications_files_by_id_result_get(id, opts)

Get Detailed File Verification Result

Returns status and results (if verified) of file with given ID. Required Access Level: ViewEmailVerifications

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

api_instance = ElasticEmail::VerificationsApi.new
id = 'id_example' # String | ID of the Verification to display status of
opts = {
  limit: 56, # Integer | Maximum number of returned email verification results
  offset: 56 # Integer | How many result items should be returned ahead
}

begin
  # Get Detailed File Verification Result
  result = api_instance.verifications_files_by_id_result_get(id, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_result_get: #{e}"
end
```

#### Using the verifications_files_by_id_result_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationFileResultDetails>, Integer, Hash)> verifications_files_by_id_result_get_with_http_info(id, opts)

```ruby
begin
  # Get Detailed File Verification Result
  data, status_code, headers = api_instance.verifications_files_by_id_result_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationFileResultDetails>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_result_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Verification to display status of |  |
| **limit** | **Integer** | Maximum number of returned email verification results | [optional] |
| **offset** | **Integer** | How many result items should be returned ahead | [optional] |

### Return type

[**VerificationFileResultDetails**](VerificationFileResultDetails.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifications_files_by_id_verification_post

> verifications_files_by_id_verification_post(id)

Start verification

Start a verification of the previously uploaded file with emails. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
id = 'id_example' # String | File ID to start verification

begin
  # Start verification
  api_instance.verifications_files_by_id_verification_post(id)
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_verification_post: #{e}"
end
```

#### Using the verifications_files_by_id_verification_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> verifications_files_by_id_verification_post_with_http_info(id)

```ruby
begin
  # Start verification
  data, status_code, headers = api_instance.verifications_files_by_id_verification_post_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_by_id_verification_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | File ID to start verification |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## verifications_files_post

> <VerificationFileResult> verifications_files_post(opts)

Upload File with Emails

Uploads a CSV file with list of emails that can then be triggered for verification. An 'email' column is required. Required Access Level: VerifyEmails

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

api_instance = ElasticEmail::VerificationsApi.new
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Upload File with Emails
  result = api_instance.verifications_files_post(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_post: #{e}"
end
```

#### Using the verifications_files_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationFileResult>, Integer, Hash)> verifications_files_post_with_http_info(opts)

```ruby
begin
  # Upload File with Emails
  data, status_code, headers = api_instance.verifications_files_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationFileResult>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  | [optional] |

### Return type

[**VerificationFileResult**](VerificationFileResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## verifications_files_result_get

> <Array<VerificationFileResult>> verifications_files_result_get

Get Files Verification Results

Returns a list of uploaded files, their statuses and results. Required Access Level: ViewEmailVerifications

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

api_instance = ElasticEmail::VerificationsApi.new

begin
  # Get Files Verification Results
  result = api_instance.verifications_files_result_get
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_result_get: #{e}"
end
```

#### Using the verifications_files_result_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VerificationFileResult>>, Integer, Hash)> verifications_files_result_get_with_http_info

```ruby
begin
  # Get Files Verification Results
  data, status_code, headers = api_instance.verifications_files_result_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VerificationFileResult>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_files_result_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;VerificationFileResult&gt;**](VerificationFileResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verifications_get

> <Array<EmailValidationResult>> verifications_get(opts)

Get Emails Verification Results

Returns a results of all verified single emails. Required Access Level: ViewEmailVerifications

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

api_instance = ElasticEmail::VerificationsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Get Emails Verification Results
  result = api_instance.verifications_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_get: #{e}"
end
```

#### Using the verifications_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EmailValidationResult>>, Integer, Hash)> verifications_get_with_http_info(opts)

```ruby
begin
  # Get Emails Verification Results
  data, status_code, headers = api_instance.verifications_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EmailValidationResult>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling VerificationsApi->verifications_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;EmailValidationResult&gt;**](EmailValidationResult.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

