# ElasticEmail::SubAccountInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_account_id** | **String** | Public key for limited access to your Account such as contact/add so you can use it safely on public websites. | [optional] |
| **email** | **String** | Proper email address. | [optional] |
| **settings** | [**SubaccountSettingsInfo**](SubaccountSettingsInfo.md) |  | [optional] |
| **last_activity** | **Time** | Date of last activity on Account | [optional] |
| **email_credits** | **Integer** | Amount of email credits | [optional] |
| **total_emails_sent** | **Integer** | Amount of emails sent from this Account | [optional] |
| **reputation** | **Float** | Numeric reputation | [optional] |
| **status** | [**AccountStatusEnum**](AccountStatusEnum.md) |  | [optional][default to &#39;Disabled&#39;] |
| **contacts_count** | **Integer** | How many contacts this SubAccount has stored | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SubAccountInfo.new(
  public_account_id: EB3EBB7A-C20D-4D39-8F2F-5E6842F58E6F,
  email: mail@example.com,
  settings: null,
  last_activity: null,
  email_credits: 1000,
  total_emails_sent: 1000,
  reputation: 100,
  status: null,
  contacts_count: null
)
```

