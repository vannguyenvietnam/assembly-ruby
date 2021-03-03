# AssemblyRuby::Transactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) |  | [optional] |
| **meta** | [**ListBpayAccountsMeta**](ListBpayAccountsMeta.md) |  | [optional] |
| **links** | [**AddressAddressesLinks**](AddressAddressesLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Transactions.new(
  transactions: null,
  meta: null,
  links: null
)
```

