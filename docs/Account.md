# AssemblyRuby::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Account.new(
  active: true,
  created_at: null,
  updated_at: null,
  id: 46deb476-c1a6-41eb-8eb7-26a695bbe5bc,
  currency: AUD
)
```

