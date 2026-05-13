# ElasticEmail::WebhookUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Filename | [optional] |
| **url** | **String** | URL of notification. | [optional] |
| **notify_once_per_email** | **Boolean** |  | [optional] |
| **notification_for_sent** | **Boolean** |  | [optional] |
| **notification_for_opened** | **Boolean** |  | [optional] |
| **notification_for_clicked** | **Boolean** |  | [optional] |
| **notification_for_unsubscribed** | **Boolean** |  | [optional] |
| **notification_for_abuse_report** | **Boolean** |  | [optional] |
| **notification_for_error** | **Boolean** |  | [optional] |
| **is_enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::WebhookUpdatePayload.new(
  name: attachment.txt,
  url: http://address.for.notification.com,
  notify_once_per_email: null,
  notification_for_sent: null,
  notification_for_opened: null,
  notification_for_clicked: null,
  notification_for_unsubscribed: null,
  notification_for_abuse_report: null,
  notification_for_error: null,
  is_enabled: null
)
```

