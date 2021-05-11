# ElasticEmail::Campaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;CampaignTemplate&gt;**](CampaignTemplate.md) | Campaign&#39;s email content. Provide multiple items to send an A/X Split Campaign | [optional] |
| **name** | **String** | Campaign name | [optional] |
| **status** | [**CampaignStatus**](CampaignStatus.md) | Campaign status | [optional] |
| **recipients** | [**CampaignRecipient**](CampaignRecipient.md) | Recipients this campaign should be sent to | [optional] |
| **options** | [**CampaignOptions**](CampaignOptions.md) | Campaign sending options | [optional] |

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

