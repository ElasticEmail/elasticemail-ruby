# ElasticEmail::ContactActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_sent** | **Integer** | Total emails sent. | [optional] |
| **total_opened** | **Integer** | Total emails opened. | [optional] |
| **total_clicked** | **Integer** | Total emails clicked | [optional] |
| **total_failed** | **Integer** | Total emails failed. | [optional] |
| **last_sent** | **Time** | Last date when an email was sent to this contact | [optional] |
| **last_opened** | **Time** | Date this contact last opened an email | [optional] |
| **last_clicked** | **Time** | Date this contact last clicked an email | [optional] |
| **last_failed** | **Time** | Last date when an email sent to this contact bounced | [optional] |
| **last_ip** | **String** | IP from which this contact opened or clicked their email last time | [optional] |
| **error_code** | **Integer** | Last RFC Error code if any occurred | [optional] |
| **friendly_error_message** | **String** | Last RFC error message if any occurred | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ContactActivity.new(
  total_sent: 1000,
  total_opened: 1000,
  total_clicked: 1000,
  total_failed: 1000,
  last_sent: null,
  last_opened: null,
  last_clicked: null,
  last_failed: null,
  last_ip: null,
  error_code: null,
  friendly_error_message: null
)
```

