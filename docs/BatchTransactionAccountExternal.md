# AssemblyRuby::BatchTransactionAccountExternal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type_id** | **String** |  | [optional] |
| **currency** | [**BatchTransactionAccountExternalCurrency**](BatchTransactionAccountExternalCurrency.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::BatchTransactionAccountExternal.new(
  account_type_id: 9100,
  currency: null
)
```

