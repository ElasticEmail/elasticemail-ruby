# ElasticEmail::SplitOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **optimize_for** | [**SplitOptimizationType**](SplitOptimizationType.md) |  | [optional][default to &#39;Opens&#39;] |
| **optimize_period_minutes** | **Integer** | For how long should the results be measured until determining the winner template (content) | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SplitOptions.new(
  optimize_for: null,
  optimize_period_minutes: 30
)
```

