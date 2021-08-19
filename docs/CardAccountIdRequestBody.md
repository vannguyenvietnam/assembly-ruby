# AssemblyRuby::CardAccountIdRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Card account ID | [default to &#39;725cc8c0-759b-0138-5d6d-0a58a9feac05&#39;] |
| **cvv** | **String** | CVV / CVC | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::CardAccountIdRequestBody.new(
  account_id: 725cc8c0-759b-0138-5d6d-0a58a9feac05,
  cvv: 
)
```

