# ElasticEmail::SortOrderItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_inbound_id** | **String** | ID of the route to change the order of |  |
| **sort_order** | **Integer** | 1 - route will be used first |  |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SortOrderItem.new(
  public_inbound_id: null,
  sort_order: null
)
```

