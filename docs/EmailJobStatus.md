# ElasticEmail::EmailJobStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID number of your attachment | [optional] |
| **status** | **String** | Name of status: submitted, complete, in_progress | [optional] |
| **recipients_count** | **Integer** |  | [optional] |
| **failed** | [**Array&lt;EmailJobFailedStatus&gt;**](EmailJobFailedStatus.md) |  | [optional] |
| **failed_count** | **Integer** | Total emails failed. | [optional] |
| **sent** | **Array&lt;String&gt;** |  | [optional] |
| **sent_count** | **Integer** | Total emails sent. | [optional] |
| **delivered** | **Array&lt;String&gt;** | Number of delivered messages | [optional] |
| **delivered_count** | **Integer** |  | [optional] |
| **pending** | **Array&lt;String&gt;** |  | [optional] |
| **pending_count** | **Integer** |  | [optional] |
| **opened** | **Array&lt;String&gt;** | Number of opened messages | [optional] |
| **opened_count** | **Integer** | Total emails opened. | [optional] |
| **clicked** | **Array&lt;String&gt;** | Number of clicked messages | [optional] |
| **clicked_count** | **Integer** | Total emails clicked | [optional] |
| **unsubscribed** | **Array&lt;String&gt;** | Number of unsubscribed messages | [optional] |
| **unsubscribed_count** | **Integer** | Total emails unsubscribed | [optional] |
| **abuse_reports** | **Array&lt;String&gt;** |  | [optional] |
| **abuse_reports_count** | **Integer** |  | [optional] |
| **message_ids** | **Array&lt;String&gt;** | List of all MessageIDs for this job. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailJobStatus.new(
  id: 123456,
  status: null,
  recipients_count: null,
  failed: null,
  failed_count: 1000,
  sent: null,
  sent_count: 1000,
  delivered: [&quot;1000&quot;],
  delivered_count: null,
  pending: null,
  pending_count: null,
  opened: [&quot;1000&quot;],
  opened_count: 1000,
  clicked: [&quot;1000&quot;],
  clicked_count: 1000,
  unsubscribed: [&quot;1000&quot;],
  unsubscribed_count: 1000,
  abuse_reports: null,
  abuse_reports_count: null,
  message_ids: null
)
```

