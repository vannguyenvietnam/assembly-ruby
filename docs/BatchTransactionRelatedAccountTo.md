# AssemblyRuby::BatchTransactionRelatedAccountTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::BatchTransactionRelatedAccountTo.new(
  id: 385b50bb-237a-42cb-9382-22953e191ae6,
  account_type: wallet_account,
  user_id: 5830def0-ffe8-11e5-86aa-5e5517507c66
)
```

