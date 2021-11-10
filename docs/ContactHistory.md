# ElasticEmail::ContactHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | [**ContactHistEventType**](ContactHistEventType.md) |  | [optional][default to &#39;Opened&#39;] |
| **event_date** | **Time** | Formatted date of event. | [optional] |
| **channel_name** | **String** | Name of channel this event occured on | [optional] |
| **template_name** | **String** | Name of template this event occured on | [optional] |
| **ip_address** | **String** | IP Address of the event. | [optional] |
| **country** | **String** | Country of the event. | [optional] |
| **data** | **String** | Additional information about the event | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ContactHistory.new(
  event_type: null,
  event_date: null,
  channel_name: null,
  template_name: null,
  ip_address: null,
  country: null,
  data: null
)
```

