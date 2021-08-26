# ElasticEmail::TemplatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Template name |  |
| **subject** | **String** | Default subject of email. | [optional] |
| **body** | [**Array&lt;BodyPart&gt;**](BodyPart.md) | Email content of this template | [optional] |
| **template_scope** | [**TemplateScope**](TemplateScope.md) | Visibility of a template | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::TemplatePayload.new(
  name: null,
  subject: Hello!,
  body: null,
  template_scope: null
)
```

