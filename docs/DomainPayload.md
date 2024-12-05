# ElasticEmail::DomainPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Name of selected domain. | [optional] |
| **set_as_default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::DomainPayload.new(
  domain: example.com,
  set_as_default: null
)
```

