# ElasticEmail::VerificationFileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** | Identifier of this verification result | [optional] |
| **filename** | **String** | Origin file name | [optional] |
| **verification_status** | [**VerificationStatus**](VerificationStatus.md) | In what state does this verification result currently is | [optional] |
| **file_upload_result** | [**FileUploadResult**](FileUploadResult.md) | How many emails were detected in the file for verification | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **source** | **String** | Origin file extension | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::VerificationFileResult.new(
  verification_id: null,
  filename: null,
  verification_status: null,
  file_upload_result: null,
  date_added: null,
  source: null
)
```

