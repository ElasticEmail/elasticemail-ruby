# ElasticEmail::SmtpCredentialsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Credential for ease of reference. It must be a valid email address. | [optional] |
| **expires** | **Time** | Date this SmtpCredential expires. | [optional] |
| **restrict_access_to_ip_range** | **Array&lt;String&gt;** | Which IPs can use this SmtpCredential | [optional] |
| **subaccount** | **String** | Email of the subaccount for which this SmtpCredential should be created | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SmtpCredentialsPayload.new(
  name: null,
  expires: null,
  restrict_access_to_ip_range: null,
  subaccount: null
)
```

