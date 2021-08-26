# ElasticEmail::SubaccountPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. |  |
| **password** | **String** | Current password. |  |
| **send_activation** | **Boolean** | True, if you want to send activation email to this Account to confirm the creation of a new SubAccount. Otherwise, false (SubAccount will immediately be Active). | [optional] |
| **settings** | [**SubaccountSettingsInfoPayload**](SubaccountSettingsInfoPayload.md) | SubAccount settings | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SubaccountPayload.new(
  email: mail@example.com,
  password: ********,
  send_activation: null,
  settings: null
)
```

