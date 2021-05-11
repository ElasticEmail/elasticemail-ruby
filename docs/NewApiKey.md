# ElasticEmail::NewApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Unique token to be used in the system | [optional] |
| **access_level** | [**Array&lt;AccessLevel&gt;**](AccessLevel.md) | Access level or permission to be assigned to this ApiKey. | [optional] |
| **name** | **String** | Name of the ApiKey. | [optional] |
| **date_created** | **Time** | Date this ApiKey was created. | [optional] |
| **last_use** | **Time** | Date this ApiKey was last used. | [optional] |
| **expires** | **Time** | Date this ApiKey expires. | [optional] |
| **restrict_access_to_ip_range** | **Array&lt;String&gt;** | Which IPs can use this ApiKey | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::NewApiKey.new(
  token: null,
  access_level: null,
  name: null,
  date_created: null,
  last_use: null,
  expires: null,
  restrict_access_to_ip_range: null
)
```

