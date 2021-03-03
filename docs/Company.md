# AssemblyRuby::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_name** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **tax_number** | **String** |  | [optional] |
| **charge_tax** | **Boolean** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **related** | [**CompanyRelated**](CompanyRelated.md) |  | [optional] |
| **_self** | [**CompanySelf**](CompanySelf.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Company.new(
  legal_name: Samuel&#39;s Gardening Pty Ltd,
  name: Samuel&#39;s Gardening,
  tax_number: 100200300,
  charge_tax: false,
  phone: 61400000000,
  id: 7b85aa9c-fc54-4449-afef-f52fc2b94cd3,
  related: null,
  _self: null
)
```

