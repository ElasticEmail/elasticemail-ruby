# ElasticEmail::ContactUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | A key-value collection of custom contact fields which can be used in the system. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ContactUpdatePayload.new(
  first_name: Fred,
  last_name: Flintstone,
  custom_fields: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;}
)
```

