# ElasticEmail::SplitOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **optimize_for** | [**SplitOptimizationType**](SplitOptimizationType.md) | Type of results by which to determine the winner template (content) | [optional] |
| **optimize_period_minutes** | **Integer** | For how long should the results be measured until determining the winner template (content) | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SplitOptions.new(
  optimize_for: null,
  optimize_period_minutes: 30
)
```

