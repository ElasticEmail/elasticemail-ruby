# ElasticEmail::EmailsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule** | **String** | SQL-like rule. Sending &#39;All&#39; as a value loads all resources of the given type. Help for building a segment rule can be found here: https://help.elasticemail.com/en/articles/5162182-segment-rules | [optional] |
| **emails** | **Array&lt;String&gt;** | Comma delimited list of contact emails | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailsPayload.new(
  rule: null,
  emails: [ &quot;john.doe@sample.com&quot; ]
)
```

