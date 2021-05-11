# ElasticEmail::FileUploadResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails_count** | **Integer** | How many unique emails were detected the file | [optional] |
| **duplicated_emails_count** | **Integer** | How many email duplicates were detected | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::FileUploadResult.new(
  emails_count: null,
  duplicated_emails_count: null
)
```

