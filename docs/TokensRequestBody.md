# AssemblyRuby::TokensRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | This is a constant value of &#x60;client_credentials&#x60; | [default to &#39;client_credentials&#39;] |
| **client_id** | **String** | This value is supplied to you by Assembly Payments. | [default to &#39;10ajtntet1ccghuo8mv9ojglma&#39;] |
| **client_secret** | **String** | This value is supplied to you by Assembly Payments. | [default to &#39;hto00nsjk6osurndceon4rsn2irhi8s4lurau5f797d0smb94l6&#39;] |
| **scope** | **String** | This value is supplied to you by Assembly Payments. | [default to &#39;im-au-04/cdbf9590-1db6-0139-ac4d-0a58a9feac03&#39;] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::TokensRequestBody.new(
  grant_type: client_credentials,
  client_id: 10ajtntet1ccghuo8mv9ojglma,
  client_secret: hto00nsjk6osurndceon4rsn2irhi8s4lurau5f797d0smb94l6,
  scope: im-au-04/cdbf9590-1db6-0139-ac4d-0a58a9feac03
)
```

