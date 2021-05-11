# ElasticEmail::EmailView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | Body (HTML, otherwise plain text) of email | [optional] |
| **subject** | **String** | Default subject of email. | [optional] |
| **from** | **String** | From email address | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailView.new(
  body: null,
  subject: Hello!,
  from: null
)
```

