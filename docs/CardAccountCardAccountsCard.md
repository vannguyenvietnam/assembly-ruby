# AssemblyRuby::CardAccountCardAccountsCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **full_name** | **String** |  | [optional] |
| **number** | **String** |  | [optional] |
| **expiry_month** | **String** |  | [optional] |
| **expiry_year** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::CardAccountCardAccountsCard.new(
  type: visa,
  full_name: Bella Buyer,
  number: XXXX-XXXX-XXXX-1111,
  expiry_month: 10,
  expiry_year: 2020
)
```

