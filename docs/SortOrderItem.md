# ElasticEmail::SortOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_inbound_id** | **String** |  | [optional] |
| **sort_order** | **Integer** | 1 - route will be used first | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SortOrderItem.new(
  public_inbound_id: null,
  sort_order: null
)
```

