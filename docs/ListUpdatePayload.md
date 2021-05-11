# ElasticEmail::ListUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_list_name** | **String** | Name of your list if you want to change it. | [optional] |
| **allow_unsubscribe** | **Boolean** | True: Allow unsubscribing from this list. Otherwise, false | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ListUpdatePayload.new(
  new_list_name: My List 2,
  allow_unsubscribe: false
)
```

