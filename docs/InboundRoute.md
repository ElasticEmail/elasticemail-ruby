# ElasticEmail::InboundRoute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_id** | **String** |  | [optional] |
| **name** | **String** | Name of this route | [optional] |
| **filter_type** | [**InboundRouteFilterType**](InboundRouteFilterType.md) |  | [optional][default to &#39;EmailAddress&#39;] |
| **filter** | **String** | Filter of the inbound data | [optional] |
| **action_type** | [**InboundRouteActionType**](InboundRouteActionType.md) |  | [optional][default to &#39;ForwardToEmail&#39;] |
| **action_parameter** | **String** | URL address or Email to notify about the inbound | [optional] |
| **sort_order** | **Integer** | Place of this route in your routes queue&#39;s order | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::InboundRoute.new(
  public_id: null,
  name: null,
  filter_type: null,
  filter: null,
  action_type: null,
  action_parameter: null,
  sort_order: null
)
```

