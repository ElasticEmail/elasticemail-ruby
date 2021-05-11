# ElasticEmail::Segment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Segment name | [optional] |
| **rule** | **String** | SQL-like rule to determine which Contacts belong to this Segment. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Segment.new(
  name: null,
  rule: null
)
```

