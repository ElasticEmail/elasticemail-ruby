# ElasticEmail::MessageAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_content** | **String** | File&#39;s content as byte array (or a Base64 string) |  |
| **name** | **String** | Display name of the file |  |
| **content_type** | **String** | MIME content type | [optional] |
| **size** | **Integer** | Size of your attachment (in bytes). | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::MessageAttachment.new(
  binary_content: null,
  name: null,
  content_type: null,
  size: 100
)
```

