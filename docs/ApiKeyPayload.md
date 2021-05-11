# ElasticEmail::ApiKeyPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the ApiKey for ease of reference. | [optional] |
| **access_level** | [**Array&lt;AccessLevel&gt;**](AccessLevel.md) | Access level or permission to be assigned to this ApiKey. | [optional] |
| **expires** | **Time** | Date this ApiKey expires. | [optional] |
| **restrict_access_to_ip_range** | **Array&lt;String&gt;** | Which IPs can use this ApiKey | [optional] |
| **subaccount** | **String** | Email of the subaccount for which this ApiKey should be created | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ApiKeyPayload.new(
  name: null,
  access_level: null,
  expires: null,
  restrict_access_to_ip_range: null,
  subaccount: null
)
```

