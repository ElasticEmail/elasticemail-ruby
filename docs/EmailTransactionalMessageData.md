# ElasticEmail::EmailTransactionalMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipients** | [**TransactionalRecipient**](TransactionalRecipient.md) |  |  |
| **content** | [**EmailContent**](EmailContent.md) |  | [optional] |
| **options** | [**Options**](Options.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailTransactionalMessageData.new(
  recipients: null,
  content: null,
  options: null
)
```

