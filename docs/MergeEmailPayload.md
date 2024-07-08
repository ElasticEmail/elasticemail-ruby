# ElasticEmail::MergeEmailPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_file** | [**MessageAttachment**](MessageAttachment.md) |  |  |
| **content** | [**EmailContent**](EmailContent.md) |  |  |
| **options** | [**Options**](Options.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::MergeEmailPayload.new(
  merge_file: null,
  content: null,
  options: null
)
```

