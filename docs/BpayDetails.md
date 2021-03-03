# AssemblyRuby::BpayDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **biller_code** | **String** |  | [optional] |
| **amount** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **reference** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::BpayDetails.new(
  biller_code: 230680,
  amount: $250.00,
  currency: AUD,
  reference: 100014013961629
)
```

