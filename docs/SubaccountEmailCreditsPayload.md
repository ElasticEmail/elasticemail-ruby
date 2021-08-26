# ElasticEmail::SubaccountEmailCreditsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credits** | **Integer** | Positive or negative value; this will be added or subtracted from Subaccount&#39;s current email Credits pool. |  |
| **notes** | **String** | Note to append to this credits change, for history. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::SubaccountEmailCreditsPayload.new(
  credits: null,
  notes: null
)
```

