# ElasticEmail::RecipientEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID number of transaction | [optional] |
| **msg_id** | **String** | ID number of selected message. | [optional] |
| **from_email** | **String** | Default From: email address. | [optional] |
| **to** | **String** | Ending date for search in YYYY-MM-DDThh:mm:ss format. | [optional] |
| **subject** | **String** | Default subject of email. | [optional] |
| **event_type** | [**EventType**](EventType.md) | Type of an Event | [optional] |
| **event_date** | **Time** | Creation date | [optional] |
| **channel_name** | **String** | Name of selected channel. | [optional] |
| **message_category** | [**MessageCategory**](MessageCategory.md) | Message category | [optional] |
| **next_try_on** | **Time** | Date of next try | [optional] |
| **message** | **String** | Content of message, HTML encoded | [optional] |
| **ip_address** | **String** | IP which this email was sent through | [optional] |
| **pool_name** | **String** | Name of an IP pool this email was sent through | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::RecipientEvent.new(
  transaction_id: TransactionID,
  msg_id: ABCDE_9RPhSWiaJq_ab1g1,
  from_email: sender@yourdomain.com,
  to: 2001-01-01T01:01:01,
  subject: Hello!,
  event_type: null,
  event_date: null,
  channel_name: Channel01,
  message_category: null,
  next_try_on: null,
  message: Lorem ipsum,
  ip_address: null,
  pool_name: null
)
```

