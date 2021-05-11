# ElasticEmail::ContactPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. | [optional] |
| **status** | [**ContactStatus**](ContactStatus.md) | Status of the given resource | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | A key-value collection of custom contact fields which can be used in the system. Only already existing custom fields will be saved. | [optional] |
| **consent** | [**ConsentData**](ConsentData.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ContactPayload.new(
  email: mail@example.com,
  status: null,
  first_name: Fred,
  last_name: Flintstone,
  custom_fields: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;},
  consent: null
)
```

