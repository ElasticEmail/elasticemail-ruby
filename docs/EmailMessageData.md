# ElasticEmail::EmailMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipients** | [**Array&lt;EmailRecipient&gt;**](EmailRecipient.md) | List of recipients (visible to others) | [optional] |
| **content** | [**EmailContent**](EmailContent.md) | Proper e-mail content | [optional] |
| **options** | [**Options**](Options.md) | E-mail configuration | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailMessageData.new(
  recipients: null,
  content: null,
  options: null
)
```

