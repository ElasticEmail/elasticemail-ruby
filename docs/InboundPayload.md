# ElasticEmail::InboundPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter of the inbound data |  |
| **name** | **String** | Name of this route |  |
| **filter_type** | [**InboundRouteFilterType**](InboundRouteFilterType.md) | Type of the filter |  |
| **action_type** | [**InboundRouteActionType**](InboundRouteActionType.md) | Type of action to take |  |
| **email_address** | **String** | Email to forward the inbound to | [optional] |
| **http_address** | **String** | Address to notify about the inbound | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::InboundPayload.new(
  filter: null,
  name: null,
  filter_type: null,
  action_type: null,
  email_address: null,
  http_address: null
)
```

