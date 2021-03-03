# AssemblyRuby::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **payee_name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **type_method** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **item_name** | **String** |  | [optional] |
| **dynamic_descriptor** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **amount** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **debit_credit** | **String** |  | [optional] |
| **marketplace** | [**TransactionMarketplace**](TransactionMarketplace.md) |  | [optional] |
| **related** | [**TransactionRelated**](TransactionRelated.md) |  | [optional] |
| **payee_details** | [**TransactionPayeeDetails**](TransactionPayeeDetails.md) |  | [optional] |
| **links** | [**TransactionLinks**](TransactionLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Transaction.new(
  id: 7a138862-f821-412d-a91e-367ed7391fe7,
  created_at: null,
  updated_at: null,
  description: Debit of $250.00 from Credit Card for Credit of $250.00 to Item,
  payee_name: Test payee,
  type: payment,
  type_method: credit_card,
  state: successful,
  user_id: 064d6800-fff3-11e5-86aa-5e5517507c66,
  user_name: First1556505750 LastName,
  item_name: Item 7190985-1-9382,
  dynamic_descriptor: 100014012533407,
  account_id: 930a7f78-6bf6-4f33-8cfc-b82c787b5f83,
  account_type: card_account,
  amount: 25000,
  currency: AUD,
  debit_credit: debit,
  marketplace: null,
  related: null,
  payee_details: null,
  links: null
)
```

