# ElasticEmail::EmailData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preview** | [**EmailView**](EmailView.md) |  | [optional] |
| **attachments** | [**Array&lt;FileInfo&gt;**](FileInfo.md) | Attachments sent with the email | [optional] |
| **status** | [**EmailStatus**](EmailStatus.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailData.new(
  preview: null,
  attachments: null,
  status: null
)
```

