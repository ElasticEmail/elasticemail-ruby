# ElasticEmail::MessageAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_content** | **String** |  | [optional] |
| **name** | **String** | Filename | [optional] |
| **content_type** | **String** |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::MessageAttachment.new(
  binary_content: null,
  name: attachment.txt,
  content_type: null
)
```

