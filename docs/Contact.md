# ElasticEmail::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. | [optional] |
| **status** | [**ContactStatus**](ContactStatus.md) |  | [optional][default to &#39;Transactional&#39;] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | A key-value collection of custom contact fields which can be used in the system. | [optional] |
| **consent** | [**ConsentData**](ConsentData.md) |  | [optional] |
| **source** | [**ContactSource**](ContactSource.md) |  | [optional][default to &#39;DeliveryApi&#39;] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **date_updated** | **Time** | Last change date | [optional] |
| **status_change_date** | **Time** | Date of last status change. | [optional] |
| **activity** | [**ContactActivity**](ContactActivity.md) |  | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Contact.new(
  email: mail@example.com,
  status: null,
  first_name: Fred,
  last_name: Flintstone,
  custom_fields: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;},
  consent: null,
  source: null,
  date_added: null,
  date_updated: null,
  status_change_date: null,
  activity: null
)
```

