# ElasticEmail::EmailStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | Email address this email was sent from. | [optional] |
| **to** | **String** | Email address this email was sent to. | [optional] |
| **date** | **Time** | Date the email was submitted. | [optional] |
| **status** | [**LogJobStatus**](LogJobStatus.md) |  | [optional][default to &#39;All&#39;] |
| **status_name** | **String** | Name of email&#39;s status | [optional] |
| **status_change_date** | **Time** | Date of last status change. | [optional] |
| **date_sent** | **Time** | Date when the email was sent | [optional] |
| **date_opened** | **Time** | Date when the email changed the status to &#39;opened&#39; | [optional] |
| **date_clicked** | **Time** | Date when the email changed the status to &#39;clicked&#39; | [optional] |
| **error_message** | **String** | Detailed error or bounced message. | [optional] |
| **transaction_id** | **String** | ID number of transaction | [optional] |
| **envelope_from** | **String** | Envelope from address | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailStatus.new(
  from: null,
  to: null,
  date: null,
  status: null,
  status_name: null,
  status_change_date: null,
  date_sent: null,
  date_opened: null,
  date_clicked: null,
  error_message: null,
  transaction_id: TransactionID,
  envelope_from: null
)
```

