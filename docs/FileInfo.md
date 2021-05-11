# ElasticEmail::FileInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | Name of your file including extension. | [optional] |
| **size** | **Integer** | Size of your attachment (in bytes). | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **expiration_date** | **Time** | Date when the file will be deleted from your Account. | [optional] |
| **content_type** | **String** | Content type of the file. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::FileInfo.new(
  file_name: filename.txt,
  size: 100,
  date_added: null,
  expiration_date: null,
  content_type: image/jpeg
)
```

