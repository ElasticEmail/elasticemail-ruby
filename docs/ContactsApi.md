# ElasticEmail::ContactsApi

All URIs are relative to *https://api.elasticemail.com/v4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**contacts_by_email_delete**](ContactsApi.md#contacts_by_email_delete) | **DELETE** /contacts/{email} | Delete Contact |
| [**contacts_by_email_get**](ContactsApi.md#contacts_by_email_get) | **GET** /contacts/{email} | Load Contact |
| [**contacts_by_email_put**](ContactsApi.md#contacts_by_email_put) | **PUT** /contacts/{email} | Update Contact |
| [**contacts_delete_post**](ContactsApi.md#contacts_delete_post) | **POST** /contacts/delete | Delete Contacts Bulk |
| [**contacts_export_by_id_status_get**](ContactsApi.md#contacts_export_by_id_status_get) | **GET** /contacts/export/{id}/status | Check Export Status |
| [**contacts_export_post**](ContactsApi.md#contacts_export_post) | **POST** /contacts/export | Export Contacts |
| [**contacts_get**](ContactsApi.md#contacts_get) | **GET** /contacts | Load Contacts |
| [**contacts_import_post**](ContactsApi.md#contacts_import_post) | **POST** /contacts/import | Upload Contacts |
| [**contacts_post**](ContactsApi.md#contacts_post) | **POST** /contacts | Add Contact |


## contacts_by_email_delete

> contacts_by_email_delete(email)

Delete Contact

Deletes the provided contact. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ContactsApi.new
email = 'mail@example.com' # String | Proper email address.

begin
  # Delete Contact
  api_instance.contacts_by_email_delete(email)
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_delete: #{e}"
end
```

#### Using the contacts_by_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> contacts_by_email_delete_with_http_info(email)

```ruby
begin
  # Delete Contact
  data, status_code, headers = api_instance.contacts_by_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## contacts_by_email_get

> <Contact> contacts_by_email_get(email)

Load Contact

Load detailed contact information for specified email. Required Access Level: ViewContacts

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

api_instance = ElasticEmail::ContactsApi.new
email = 'mail@example.com' # String | Proper email address.

begin
  # Load Contact
  result = api_instance.contacts_by_email_get(email)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_get: #{e}"
end
```

#### Using the contacts_by_email_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> contacts_by_email_get_with_http_info(email)

```ruby
begin
  # Load Contact
  data, status_code, headers = api_instance.contacts_by_email_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_by_email_put

> <Contact> contacts_by_email_put(email, contact_update_payload)

Update Contact

Update selected contact. Omitted contact's fields will not be changed. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ContactsApi.new
email = 'mail@example.com' # String | Proper email address.
contact_update_payload = ElasticEmail::ContactUpdatePayload.new # ContactUpdatePayload | 

begin
  # Update Contact
  result = api_instance.contacts_by_email_put(email, contact_update_payload)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_put: #{e}"
end
```

#### Using the contacts_by_email_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> contacts_by_email_put_with_http_info(email, contact_update_payload)

```ruby
begin
  # Update Contact
  data, status_code, headers = api_instance.contacts_by_email_put_with_http_info(email, contact_update_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_by_email_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |
| **contact_update_payload** | [**ContactUpdatePayload**](ContactUpdatePayload.md) |  |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## contacts_delete_post

> contacts_delete_post(emails_payload)

Delete Contacts Bulk

Deletes provided contacts in bulk. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ContactsApi.new
emails_payload = ElasticEmail::EmailsPayload.new # EmailsPayload | Provide either rule or a list of emails, not both.

begin
  # Delete Contacts Bulk
  api_instance.contacts_delete_post(emails_payload)
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_delete_post: #{e}"
end
```

#### Using the contacts_delete_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> contacts_delete_post_with_http_info(emails_payload)

```ruby
begin
  # Delete Contacts Bulk
  data, status_code, headers = api_instance.contacts_delete_post_with_http_info(emails_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_delete_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails_payload** | [**EmailsPayload**](EmailsPayload.md) | Provide either rule or a list of emails, not both. |  |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## contacts_export_by_id_status_get

> <ExportStatus> contacts_export_by_id_status_get(id)

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

api_instance = ElasticEmail::ContactsApi.new
id = 'E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F' # String | ID of the exported file

begin
  # Check Export Status
  result = api_instance.contacts_export_by_id_status_get(id)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_export_by_id_status_get: #{e}"
end
```

#### Using the contacts_export_by_id_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportStatus>, Integer, Hash)> contacts_export_by_id_status_get_with_http_info(id)

```ruby
begin
  # Check Export Status
  data, status_code, headers = api_instance.contacts_export_by_id_status_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportStatus>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_export_by_id_status_get_with_http_info: #{e}"
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


## contacts_export_post

> <ExportLink> contacts_export_post(opts)

Export Contacts

Request an Export of specified Contacts. Required Access Level: Export

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

api_instance = ElasticEmail::ContactsApi.new
opts = {
  file_format: ElasticEmail::ExportFileFormats::CSV, # ExportFileFormats | Format of the exported file
  rule: 'Status%20=%20Engaged', # String | Query used for filtering.
  emails: ['inner_example'], # Array<String> | Comma delimited list of contact emails
  compression_format: ElasticEmail::CompressionFormat::NONE, # CompressionFormat | FileResponse compression format. None or Zip.
  file_name: 'filename.txt' # String | Name of your file including extension.
}

begin
  # Export Contacts
  result = api_instance.contacts_export_post(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_export_post: #{e}"
end
```

#### Using the contacts_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportLink>, Integer, Hash)> contacts_export_post_with_http_info(opts)

```ruby
begin
  # Export Contacts
  data, status_code, headers = api_instance.contacts_export_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportLink>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_format** | [**ExportFileFormats**](.md) | Format of the exported file | [optional][default to &#39;Csv&#39;] |
| **rule** | **String** | Query used for filtering. | [optional] |
| **emails** | [**Array&lt;String&gt;**](String.md) | Comma delimited list of contact emails | [optional] |
| **compression_format** | [**CompressionFormat**](.md) | FileResponse compression format. None or Zip. | [optional][default to &#39;None&#39;] |
| **file_name** | **String** | Name of your file including extension. | [optional] |

### Return type

[**ExportLink**](ExportLink.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_get

> <Array<Contact>> contacts_get(opts)

Load Contacts

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

api_instance = ElasticEmail::ContactsApi.new
opts = {
  limit: 100, # Integer | Maximum number of returned items.
  offset: 20 # Integer | How many items should be returned ahead.
}

begin
  # Load Contacts
  result = api_instance.contacts_get(opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_get: #{e}"
end
```

#### Using the contacts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Contact>>, Integer, Hash)> contacts_get_with_http_info(opts)

```ruby
begin
  # Load Contacts
  data, status_code, headers = api_instance.contacts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Contact>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of returned items. | [optional] |
| **offset** | **Integer** | How many items should be returned ahead. | [optional] |

### Return type

[**Array&lt;Contact&gt;**](Contact.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## contacts_import_post

> contacts_import_post(opts)

Upload Contacts

Upload contacts from a file. Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ContactsApi.new
opts = {
  list_name: 'list_name_example', # String | Name of an existing list to add these contacts to
  encoding_name: 'encoding_name_example', # String | In what encoding the file is uploaded
  file_url: 'file_url_example', # String | Optional url of csv to import
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Upload Contacts
  api_instance.contacts_import_post(opts)
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_import_post: #{e}"
end
```

#### Using the contacts_import_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> contacts_import_post_with_http_info(opts)

```ruby
begin
  # Upload Contacts
  data, status_code, headers = api_instance.contacts_import_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_name** | **String** | Name of an existing list to add these contacts to | [optional] |
| **encoding_name** | **String** | In what encoding the file is uploaded | [optional] |
| **file_url** | **String** | Optional url of csv to import | [optional] |
| **file** | **File** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## contacts_post

> <Array<Contact>> contacts_post(contact_payload, opts)

Add Contact

Add new Contacts to your Lists. Up to 1000 can be added (for more please refer to the import request). Required Access Level: ModifyContacts

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

api_instance = ElasticEmail::ContactsApi.new
contact_payload = [ElasticEmail::ContactPayload.new({email: 'mail@example.com'})] # Array<ContactPayload> | 
opts = {
  listnames: ['inner_example'] # Array<String> | Names of lists to which the uploaded contacts should be added to
}

begin
  # Add Contact
  result = api_instance.contacts_post(contact_payload, opts)
  p result
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_post: #{e}"
end
```

#### Using the contacts_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Contact>>, Integer, Hash)> contacts_post_with_http_info(contact_payload, opts)

```ruby
begin
  # Add Contact
  data, status_code, headers = api_instance.contacts_post_with_http_info(contact_payload, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Contact>>
rescue ElasticEmail::ApiError => e
  puts "Error when calling ContactsApi->contacts_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_payload** | [**Array&lt;ContactPayload&gt;**](ContactPayload.md) |  |  |
| **listnames** | [**Array&lt;String&gt;**](String.md) | Names of lists to which the uploaded contacts should be added to | [optional] |

### Return type

[**Array&lt;Contact&gt;**](Contact.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

