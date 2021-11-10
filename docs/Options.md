# ElasticEmail::Options

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_offset** | **Integer** | By how long should an e-mail be delayed (in minutes). Maximum is 35 days. | [optional] |
| **pool_name** | **String** | Name of your custom IP Pool to be used in the sending process | [optional] |
| **channel_name** | **String** | Name of selected channel. | [optional] |
| **encoding** | [**EncodingType**](EncodingType.md) |  | [optional][default to &#39;UserProvided&#39;] |
| **track_opens** | **Boolean** | Should the opens be tracked? If no value has been provided, Account&#39;s default setting will be used. | [optional] |
| **track_clicks** | **Boolean** | Should the clicks be tracked? If no value has been provided, Account&#39;s default setting will be used. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Options.new(
  time_offset: null,
  pool_name: My Custom Pool,
  channel_name: Channel01,
  encoding: null,
  track_opens: true,
  track_clicks: true
)
```

