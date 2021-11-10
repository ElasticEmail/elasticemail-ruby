# ElasticEmail::CampaignOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_optimization** | [**DeliveryOptimizationType**](DeliveryOptimizationType.md) |  | [optional][default to &#39;None&#39;] |
| **track_opens** | **Boolean** | Should the opens be tracked? If no value has been provided, Account&#39;s default setting will be used. | [optional] |
| **track_clicks** | **Boolean** | Should the clicks be tracked? If no value has been provided, Account&#39;s default setting will be used. | [optional] |
| **schedule_for** | **Time** | Date when this Campaign is scheduled to be sent on | [optional] |
| **split_options** | [**SplitOptions**](SplitOptions.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::CampaignOptions.new(
  delivery_optimization: null,
  track_opens: true,
  track_clicks: true,
  schedule_for: null,
  split_options: null
)
```

