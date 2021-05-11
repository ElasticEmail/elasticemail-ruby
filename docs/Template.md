# ElasticEmail::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | [**TemplateType**](TemplateType.md) | How the template should be edited | [optional] |
| **name** | **String** | Template name | [optional] |
| **date_added** | **Time** | Date of creation in YYYY-MM-DDThh:ii:ss format | [optional] |
| **subject** | **String** | Default subject of email. | [optional] |
| **body** | [**Array&lt;BodyPart&gt;**](BodyPart.md) | Email content of this template | [optional] |
| **template_scope** | [**TemplateScopeType**](TemplateScopeType.md) | Visibility of a template | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::Template.new(
  template_type: null,
  name: null,
  date_added: null,
  subject: Hello!,
  body: null,
  template_scope: null
)
```

