# ElasticEmail::ChannelLogStatusSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_name** | **String** | Channel name | [optional] |
| **recipients** | **Integer** | Number of recipients | [optional] |
| **email_total** | **Integer** | Number of emails | [optional] |
| **sms_total** | **Integer** | Number of SMS | [optional] |
| **delivered** | **Integer** | Number of delivered messages | [optional] |
| **bounced** | **Integer** | Number of bounced messages | [optional] |
| **in_progress** | **Integer** | Number of messages in progress | [optional] |
| **opened** | **Integer** | Number of opened messages | [optional] |
| **clicked** | **Integer** | Number of clicked messages | [optional] |
| **unsubscribed** | **Integer** | Number of unsubscribed messages | [optional] |
| **complaints** | **Integer** | Number of complaint messages | [optional] |
| **inbound** | **Integer** | Number of inbound messages | [optional] |
| **manual_cancel** | **Integer** | Number of manually cancelled messages | [optional] |
| **not_delivered** | **Integer** | Number of messages flagged with &#39;Not Delivered&#39; | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ChannelLogStatusSummary.new(
  channel_name: null,
  recipients: 1234,
  email_total: 1234,
  sms_total: 12,
  delivered: 1000,
  bounced: 1000,
  in_progress: 1234,
  opened: 1000,
  clicked: 1000,
  unsubscribed: 1000,
  complaints: 1000,
  inbound: 1000,
  manual_cancel: 1000,
  not_delivered: 0
)
```

