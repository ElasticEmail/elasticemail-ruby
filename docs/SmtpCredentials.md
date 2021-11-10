# ElasticEmail::SmtpCredentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_level** | [**AccessLevel**](AccessLevel.md) |  | [optional][default to &#39;None&#39;] |
| **name** | **String** | Name of the key. | [optional] |
| **date_created** | **Time** | Date this SmtpCredential was created. | [optional] |
| **last_use** | **Time** | Date this SmtpCredential was last used. | [optional] |
| **expires** | **Time** | Date this SmtpCredential expires. | [optional] |
| **restrict_access_to_ip_range** | **Array&lt;String&gt;** | Which IPs can use this SmtpCredential | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SmtpCredentials.new(
  access_level: null,
  name: null,
  date_created: null,
  last_use: null,
  expires: null,
  restrict_access_to_ip_range: null
)
```

