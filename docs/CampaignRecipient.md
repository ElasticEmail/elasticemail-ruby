# ElasticEmail::CampaignRecipient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_names** | **Array&lt;String&gt;** | Names of lists from your Account to read recipients from | [optional] |
| **segment_names** | **Array&lt;String&gt;** | Names of segments from your Account to read recipients from | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::CampaignRecipient.new(
  list_names: null,
  segment_names: null
)
```

