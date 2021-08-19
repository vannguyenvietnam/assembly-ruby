# AssemblyRuby::FeeRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name | [default to &#39;Seller Success Fee&#39;] |
| **fee_type_id** | **String** | Fee type:   1. Fixed   2. Percentage   3. Percentage with Cap   4. Percentage with Min  | [default to &#39;2&#39;] |
| **amount** | **Integer** | Amount in cents; if the fee type is percentage, then this shows the percentage in hundredths (For example, an amount of 5 refers to 0.05% in fees.) | [default to 200] |
| **cap** | **String** | Cap the Fee | [optional] |
| **min** | **Integer** | Minimum Fee | [optional] |
| **max** | **Integer** | Maximum Fee | [optional] |
| **to** | **String** | Who pays the Fee. Allowed values are (buyer or seller). If this field has a value of buyer, then the buyer will have to pay the fee on top of the actual payment (example for an item of 100 and a fee of 2, then the buyer would have to pay 102) If this field has a value of seller, then the seller will end up receiving the amount - the fee (example for an item of 100 and a fee of 2, then the seller would end up receiving 98) | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::FeeRequestBody.new(
  name: Seller Success Fee,
  fee_type_id: 2,
  amount: 200,
  cap: ,
  min: null,
  max: null,
  to: seller
)
```

