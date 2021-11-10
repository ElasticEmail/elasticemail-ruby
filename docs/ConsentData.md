# ElasticEmail::ConsentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consent_ip** | **String** | IP address of consent to send this contact(s) your email. If not provided your current public IP address is used for consent. | [optional] |
| **consent_date** | **Time** | Date of consent to send this contact(s) your email. If not provided current date is used for consent. | [optional] |
| **consent_tracking** | [**ConsentTracking**](ConsentTracking.md) |  | [optional][default to &#39;Unknown&#39;] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ConsentData.new(
  consent_ip: 192.168.0.1,
  consent_date: null,
  consent_tracking: null
)
```

