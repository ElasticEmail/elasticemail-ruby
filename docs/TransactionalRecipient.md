# ElasticEmail::TransactionalRecipient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Array&lt;String&gt;** | List of recipients (visible to others) | [optional] |
| **cc** | **Array&lt;String&gt;** | List of Carbon Copy recipients (visible to others) | [optional] |
| **bcc** | **Array&lt;String&gt;** | List of Blind Carbon Copy recipients (hidden from other recipients) | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::TransactionalRecipient.new(
  to: null,
  cc: null,
  bcc: null
)
```

