# ElasticEmail::EmailsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule** | **String** | SQL-like rule. Sending &#39;All&#39; as a value loads all resources of the given type. | [optional] |
| **emails** | **Array&lt;String&gt;** | Comma delimited list of contact emails | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailsPayload.new(
  rule: null,
  emails: null
)
```

