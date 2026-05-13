# ElasticEmail::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Public webhook ID | [optional] |
| **name** | **String** | Filename | [optional] |
| **date_created** | **Time** | Creation date. | [optional] |
| **date_updated** | **Time** | Last change date | [optional] |
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

instance = ElasticEmail::Webhook.new(
  webhook_id: null,
  name: attachment.txt,
  date_created: null,
  date_updated: null,
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

