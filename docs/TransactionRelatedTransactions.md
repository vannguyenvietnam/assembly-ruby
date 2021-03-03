# AssemblyRuby::TransactionRelatedTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **item_name** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::TransactionRelatedTransactions.new(
  id: 6b68f5dc-b8a8-44cf-a7e8-80f350178152,
  account_id: 100fd4a0-0538-11e6-b512-3e1d05defe78,
  account_type: item,
  user_id: 064d6800-fff3-11e5-86aa-5e5517507c66,
  user_name: null,
  item_name: null
)
```

