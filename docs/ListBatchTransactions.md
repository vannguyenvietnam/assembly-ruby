# AssemblyRuby::ListBatchTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_transactions** | [**Array&lt;BatchTransaction&gt;**](BatchTransaction.md) |  | [optional] |
| **meta** | [**ListBpayAccountsMeta**](ListBpayAccountsMeta.md) |  | [optional] |
| **links** | [**AddressAddressesLinks**](AddressAddressesLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::ListBatchTransactions.new(
  batch_transactions: null,
  meta: null,
  links: null
)
```

