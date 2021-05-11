# ElasticEmail::ExportLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | **String** | Direct URL to the exported file | [optional] |
| **public_export_id** | **String** | ID of the exported file | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ExportLink.new(
  link: null,
  public_export_id: E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F
)
```

