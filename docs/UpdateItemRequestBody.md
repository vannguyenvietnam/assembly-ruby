# AssemblyRuby::UpdateItemRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | The cost in cents | [optional] |
| **name** | **String** | A name for the item | [optional] |
| **buyer_id** | **String** | Marketplace / Pltform buyer ID | [optional] |
| **seller_id** | **String** | Marketplace / Platform Seller ID | [optional] |
| **description** | **String** | A description of the item | [optional] |
| **custom_descriptor** | **String** | When &#x60;custom_descriptors&#x60; are enabled, this is the information to appear on credit card and direct debit statements. | [optional] |
| **fee_ids** | **String** | A comma separated list of fee IDs to apply | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::UpdateItemRequestBody.new(
  amount: 102,
  name: Item 7190770-1-2908,
  buyer_id: buyer-719013950014,
  seller_id: seller-71718579,
  description: Test Item 7190770-1-2908,
  custom_descriptor: ,
  fee_ids: 
)
```

