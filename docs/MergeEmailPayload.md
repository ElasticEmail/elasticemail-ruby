# ElasticEmail::MergeEmailPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_file** | [**MessageAttachment**](MessageAttachment.md) | CSV file containing recipients with optional merge fields | [optional] |
| **content** | [**EmailContent**](EmailContent.md) | Proper e-mail content | [optional] |
| **options** | [**Options**](Options.md) | E-mail configuration | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::MergeEmailPayload.new(
  merge_file: null,
  content: null,
  options: null
)
```

