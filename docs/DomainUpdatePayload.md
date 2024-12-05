# ElasticEmail::DomainUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_status** | [**CertificateValidationStatus**](CertificateValidationStatus.md) |  | [optional][default to &#39;ErrorOccured&#39;] |
| **verp** | **Boolean** |  | [optional] |
| **custom_bounces_domain** | **String** |  | [optional] |
| **is_custom_bounces_domain_default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::DomainUpdatePayload.new(
  certificate_status: null,
  verp: null,
  custom_bounces_domain: null,
  is_custom_bounces_domain_default: null
)
```

