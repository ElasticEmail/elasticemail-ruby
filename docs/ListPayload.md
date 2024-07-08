# ElasticEmail::ListPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_name** | **String** | Name of your list. |  |
| **allow_unsubscribe** | **Boolean** | True: Allow unsubscribing from this list. Otherwise, false | [optional] |
| **emails** | **Array&lt;String&gt;** | Comma delimited list of existing contact emails that should be added to this list. Leave empty for all contacts | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ListPayload.new(
  list_name: My List 1,
  allow_unsubscribe: false,
  emails: [&quot;john.doe@sample.com&quot;]
)
```

