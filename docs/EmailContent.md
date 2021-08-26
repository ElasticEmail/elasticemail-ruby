# ElasticEmail::EmailContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;BodyPart&gt;**](BodyPart.md) | List of e-mail body parts, with user-provided MIME types (text/html, text/plain etc) | [optional] |
| **merge** | **Hash&lt;String, String&gt;** | A key-value collection of custom merge fields, shared between recipients. Should be used in e-mail body like so: {firstname}, {lastname} etc. | [optional] |
| **attachments** | [**Array&lt;MessageAttachment&gt;**](MessageAttachment.md) | Attachments provided by sending binary data | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | A key-value collection of custom e-mail headers. | [optional] |
| **postback** | **String** | Postback header. | [optional] |
| **envelope_from** | **String** | E-mail with an optional name to be used as the envelope from address (e.g.: John Doe &lt;email@domain.com&gt;) | [optional] |
| **from** | **String** | Your e-mail with an optional name (e.g.: John Doe &lt;email@domain.com&gt;) | [optional] |
| **reply_to** | **String** | To what address should the recipients reply to (e.g. John Doe &lt;email@domain.com&gt;) | [optional] |
| **subject** | **String** | Default subject of email. | [optional] |
| **template_name** | **String** | Name of template. | [optional] |
| **attach_files** | **Array&lt;String&gt;** | Names of previously uploaded files that should be sent as downloadable attachments | [optional] |
| **utm** | [**Utm**](Utm.md) | Utm marketing data to be attached to every link in this e-mail. | [optional] |

## Example

```ruby
require 'ElasticEmail'

instance = ElasticEmail::EmailContent.new(
  body: null,
  merge: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;},
  attachments: null,
  headers: {&quot;city&quot;:&quot;New York&quot;,&quot;age&quot;:&quot;34&quot;},
  postback: null,
  envelope_from: John Doe &lt;email@domain.com&gt;,
  from: John Doe &lt;email@domain.com&gt;,
  reply_to: John Doe &lt;email@domain.com&gt;,
  subject: Hello!,
  template_name: Template01,
  attach_files: [ &quot;preuploaded.jpg&quot; ],
  utm: null
)
```

