# ElasticEmail::BodyPart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | [**BodyContentType**](BodyContentType.md) |  | [default to &#39;HTML&#39;] |
| **content** | **String** | Actual content of the body part | [optional] |
| **charset** | **String** | Text value of charset encoding for example: iso-8859-1, windows-1251, utf-8, us-ascii, windows-1250 and more... | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::BodyPart.new(
  content_type: null,
  content: null,
  charset: null
)
```

