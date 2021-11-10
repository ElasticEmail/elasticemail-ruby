# ElasticEmail::EmailMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipients** | [**Array&lt;EmailRecipient&gt;**](EmailRecipient.md) | List of recipients |  |
| **content** | [**EmailContent**](EmailContent.md) |  | [optional] |
| **options** | [**Options**](Options.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailMessageData.new(
  recipients: null,
  content: null,
  options: null
)
```

