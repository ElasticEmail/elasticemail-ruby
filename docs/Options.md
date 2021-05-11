# ElasticEmail::Options

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_offset** | **Integer** | By how long should an e-mail be delayed (in minutes). Maximum is 35 days. | [optional] |
| **pool_name** | **String** | Name of your custom IP Pool to be used in the sending process | [optional] |
| **channel_name** | **String** | Name of selected channel. | [optional] |
| **encoding** | [**EncodingType**](EncodingType.md) | 0 for None, 1 for Raw7Bit, 2 for Raw8Bit, 3 for QuotedPrintable, 4 for Base64 (Default), 5 for Uue note that you can also provide the text version such as \&quot;Raw7Bit\&quot; for value 1. NOTE: Base64 or QuotedPrintable is recommended if you are validating your domain(s) with DKIM. | [optional] |
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

