# AssemblyRuby::ListBpayAccountsBpayDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Name assigned by the platform/marketplace to identify the account (similar to a nickname) | [optional] |
| **biller_code** | **Integer** |  | [optional] |
| **biller_name** | **String** | Name of the biller as registered in BPay | [optional] |
| **crn** | **Integer** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::ListBpayAccountsBpayDetails.new(
  account_name: My biller 123,
  biller_code: 123456,
  biller_name: ABC Water,
  crn: 987654321
)
```

