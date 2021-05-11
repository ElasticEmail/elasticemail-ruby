# ElasticEmail::Suppression

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. | [optional] |
| **friendly_error_message** | **String** | RFC error message | [optional] |
| **error_code** | **Integer** | SMTP Error code | [optional] |
| **date_updated** | **Time** | Last change date | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Suppression.new(
  email: mail@example.com,
  friendly_error_message: Mailbox not found,
  error_code: null,
  date_updated: null
)
```

