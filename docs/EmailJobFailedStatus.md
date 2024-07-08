# ElasticEmail::EmailJobFailedStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **error_code** | **Integer** | RFC Error code | [optional] |
| **category** | **String** |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailJobFailedStatus.new(
  address: null,
  error: null,
  error_code: 550,
  category: null
)
```

