# AssemblyRuby::ChargeStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::ChargeStatus.new(
  id: cb7eafc1-571c-425c-9adc-f56cb585cd68,
  state: completed,
  status: 22500
)
```

