# ElasticEmail::ContactsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_name** | **String** | Name of your list. | [optional] |
| **public_list_id** | **String** | ID code of list. Please note that this is different from the listid field. | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **allow_unsubscribe** | **Boolean** | True: Allow unsubscribing from this list. Otherwise, false | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::ContactsList.new(
  list_name: My List 1,
  public_list_id: E33EBA7A-C20D-4D3D-8F2F-5EEF42F58E6F,
  date_added: null,
  allow_unsubscribe: false
)
```

