# ElasticEmail::DKIMRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selector** | **String** |  | [optional] |
| **public_key** | **String** |  | [optional] |
| **host_name** | **String** |  | [optional] |
| **record_value** | **String** |  | [optional] |
| **domain** | **String** | Name of selected domain. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::DKIMRecord.new(
  selector: null,
  public_key: null,
  host_name: null,
  record_value: null,
  domain: example.com
)
```

