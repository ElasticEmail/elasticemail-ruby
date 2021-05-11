# ElasticEmail::EmailSend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID number of transaction | [optional] |
| **message_id** | **String** | Unique identifier for this email. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailSend.new(
  transaction_id: TransactionID,
  message_id: -HHGPM_9RPhSMiaJq_ab4g3
)
```

