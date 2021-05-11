# ElasticEmail::EmailTransactionalMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipients** | [**TransactionalRecipient**](TransactionalRecipient.md) | List of transactional recipients | [optional] |
| **content** | [**EmailContent**](EmailContent.md) | Proper e-mail content | [optional] |
| **options** | [**Options**](Options.md) | E-mail configuration | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailTransactionalMessageData.new(
  recipients: null,
  content: null,
  options: null
)
```
