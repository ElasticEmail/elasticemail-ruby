# ElasticEmail::EmailValidationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** | Local part of an email | [optional] |
| **domain** | **String** | Name of selected domain. | [optional] |
| **email** | **String** | Full email address that was verified | [optional] |
| **suggested_spelling** | **String** | Suggested spelling if a possible mistake was found | [optional] |
| **disposable** | **Boolean** | Does the email have a temporary domain | [optional] |
| **role** | **Boolean** | Is an email a role email (e.g. info@, noreply@ etc.) | [optional] |
| **reason** | **String** | All detected issues | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **result** | [**EmailValidationStatus**](EmailValidationStatus.md) |  | [optional][default to &#39;None&#39;] |
| **predicted_score** | **Float** |  | [optional] |
| **predicted_status** | [**EmailPredictedValidationStatus**](EmailPredictedValidationStatus.md) |  | [optional][default to &#39;None&#39;] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailValidationResult.new(
  account: null,
  domain: example.com,
  email: null,
  suggested_spelling: null,
  disposable: null,
  role: null,
  reason: null,
  date_added: null,
  result: null,
  predicted_score: null,
  predicted_status: null
)
```

