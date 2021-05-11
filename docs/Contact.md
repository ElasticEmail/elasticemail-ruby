# ElasticEmail::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Proper email address. | [optional] |
| **status** | [**ContactStatus**](ContactStatus.md) | Status of the given resource | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | A key-value collection of custom contact fields which can be used in the system. | [optional] |
| **consent** | [**ConsentData**](ConsentData.md) |  | [optional] |
| **source** | [**ContactSource**](ContactSource.md) | From where was this contact added | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **date_updated** | **Time** | Last change date | [optional] |
| **status_change_date** | **Time** | Date of last status change. | [optional] |
| **activity** | [**ContactActivity**](ContactActivity.md) | Contact&#39;s email statistics and activity | [optional] |

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

