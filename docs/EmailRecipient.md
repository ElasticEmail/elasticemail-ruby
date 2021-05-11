# ElasticEmail::EmailRecipient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. | [optional] |
| **fields** | **Hash&lt;String, String&gt;** | A key-value collection of merge fields which can be used in e-mail body. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailRecipient.new(
  email: mail@example.com,
  fields: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;}
)
```

