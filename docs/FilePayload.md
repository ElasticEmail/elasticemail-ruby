# ElasticEmail::FilePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_content** | **String** | Content of the file sent as binary data |  |
| **name** | **String** | Filename | [optional] |
| **content_type** | **String** | Type of file&#39;s content (e.g. image/jpeg) | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::FilePayload.new(
  binary_content: null,
  name: attachment.txt,
  content_type: null
)
```

