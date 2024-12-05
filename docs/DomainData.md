# ElasticEmail::DomainData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validation_log** | **String** | Domain validation results - when domain has been running through validation process | [optional] |
| **domain** | **String** | Name of selected domain. | [optional] |
| **default_domain** | **Boolean** | True, if domain is used as default. Otherwise, false, | [optional] |
| **spf** | **Boolean** | True, if SPF record is verified | [optional] |
| **dkim** | **Boolean** | True, if DKIM record is verified | [optional] |
| **mx** | **Boolean** | True, if MX record is verified | [optional] |
| **dmarc** | **Boolean** |  | [optional] |
| **is_rewrite_domain_valid** | **Boolean** | True, if tracking CNAME record is verified | [optional] |
| **verify** | **Boolean** | True, if DKIM, SPF, or tracking are still to be verified | [optional] |
| **type** | [**TrackingType**](TrackingType.md) |  | [optional][default to &#39;None&#39;] |
| **tracking_status** | [**TrackingValidationStatus**](TrackingValidationStatus.md) |  | [optional][default to &#39;Validated&#39;] |
| **certificate_status** | [**CertificateValidationStatus**](CertificateValidationStatus.md) |  | [optional][default to &#39;ErrorOccured&#39;] |
| **certificate_validation_error** | **String** |  | [optional] |
| **tracking_type_user_request** | [**TrackingType**](TrackingType.md) |  | [optional][default to &#39;None&#39;] |
| **verp** | **Boolean** |  | [optional] |
| **custom_bounces_domain** | **String** |  | [optional] |
| **is_custom_bounces_domain_default** | **Boolean** |  | [optional] |
| **is_marked_for_deletion** | **Boolean** |  | [optional] |
| **ownership** | [**DomainOwner**](DomainOwner.md) |  | [optional][default to &#39;Current&#39;] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::DomainData.new(
  validation_log: null,
  domain: example.com,
  default_domain: null,
  spf: true,
  dkim: true,
  mx: true,
  dmarc: null,
  is_rewrite_domain_valid: true,
  verify: true,
  type: null,
  tracking_status: null,
  certificate_status: null,
  certificate_validation_error: null,
  tracking_type_user_request: null,
  verp: null,
  custom_bounces_domain: null,
  is_custom_bounces_domain_default: null,
  is_marked_for_deletion: null,
  ownership: null
)
```

