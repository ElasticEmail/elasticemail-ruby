# ElasticEmail::Campaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;CampaignTemplate&gt;**](CampaignTemplate.md) | Campaign&#39;s email content. Provide multiple items to send an A/X Split Campaign | [optional] |
| **name** | **String** | Campaign name |  |
| **status** | [**CampaignStatus**](CampaignStatus.md) |  | [optional][default to &#39;Deleted&#39;] |
| **recipients** | [**CampaignRecipient**](CampaignRecipient.md) |  |  |
| **options** | [**CampaignOptions**](CampaignOptions.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Campaign.new(
  content: null,
  name: null,
  status: null,
  recipients: null,
  options: null
)
```

