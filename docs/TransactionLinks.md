# AssemblyRuby::TransactionLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** |  | [optional] |
| **users** | **String** |  | [optional] |
| **fees** | **String** |  | [optional] |
| **wallet_accounts** | **String** |  | [optional] |
| **card_accounts** | **String** |  | [optional] |
| **paypal_accounts** | **String** |  | [optional] |
| **bank_accounts** | **String** |  | [optional] |
| **items** | **String** |  | [optional] |
| **marketplaces** | **String** |  | [optional] |
| **npp_payin_transaction_detail** | **String** |  | [optional] |
| **supplementary_data** | **String** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::TransactionLinks.new(
  _self: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b,
  users: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/users,
  fees: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/fees,
  wallet_accounts: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/wallet_accounts,
  card_accounts: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/card_accounts,
  paypal_accounts: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/paypal_accounts,
  bank_accounts: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/bank_accounts,
  items: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/items,
  marketplaces: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/marketplaces,
  npp_payin_transaction_detail: null,
  supplementary_data: /transactions/ea36e48a-4638-4d1a-a345-e1a0a584df8b/supplementary_data
)
```

