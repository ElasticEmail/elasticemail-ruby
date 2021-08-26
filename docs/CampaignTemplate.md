# ElasticEmail::CampaignTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **poolname** | **String** | Name of your custom IP Pool to be used in the sending process | [optional] |
| **from** | **String** | Your e-mail with an optional name (e.g.: John Doe &lt;email@domain.com&gt;) | [optional] |
| **reply_to** | **String** | To what address should the recipients reply to (e.g. John Doe &lt;email@domain.com&gt;) | [optional] |
| **subject** | **String** | Default subject of email. | [optional] |
| **template_name** | **String** | Name of template. | [optional] |
| **attach_files** | **Array&lt;String&gt;** | Names of previously uploaded files that should be sent as downloadable attachments | [optional] |
| **utm** | [**Utm**](Utm.md) | Utm marketing data to be attached to every link in this e-mail. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::CampaignTemplate.new(
  poolname: My Custom Pool,
  from: John Doe &lt;email@domain.com&gt;,
  reply_to: John Doe &lt;email@domain.com&gt;,
  subject: Hello!,
  template_name: Template01,
  attach_files: [ &quot;preuploaded.jpg&quot; ],
  utm: null
)
```

