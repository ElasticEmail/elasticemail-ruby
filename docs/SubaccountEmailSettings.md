# ElasticEmail::SubaccountEmailSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monthly_refill_credits** | **Integer** | Amount of credits added to Account automatically | [optional] |
| **requires_email_credits** | **Boolean** | True, if Account needs credits to send emails. Otherwise, false | [optional] |
| **email_size_limit** | **Integer** | Maximum size of email including attachments in MB&#39;s | [optional] |
| **daily_send_limit** | **Integer** | Amount of emails Account can send daily | [optional] |
| **max_contacts** | **Integer** | Maximum number of contacts the Account can have. 0 means that parent account&#39;s limit is used. | [optional] |
| **enable_private_ip_purchase** | **Boolean** | Can the SubAccount purchase Private IP for themselves | [optional] |
| **pool_name** | **String** | Name of your custom IP Pool to be used in the sending process | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SubaccountEmailSettings.new(
  monthly_refill_credits: 1000,
  requires_email_credits: true,
  email_size_limit: 10,
  daily_send_limit: 100000,
  max_contacts: null,
  enable_private_ip_purchase: null,
  pool_name: My Custom Pool
)
```

