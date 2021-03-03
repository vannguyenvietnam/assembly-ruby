# AssemblyRuby::WalletAccountWalletAccountsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **Object** |  | [optional] |
| **users** | **Object** |  | [optional] |
| **batch_transactions** | **Object** |  | [optional] |
| **transactions** | **Object** |  | [optional] |
| **bpay_details** | **Object** |  | [optional] |
| **npp_details** | **Object** |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::WalletAccountWalletAccountsLinks.new(
  _self: /transactions/aed45af0-6f63-0138-901c-0a58a9feac03/wallet_accounts,
  users: /wallet_accounts/5c1c6b10-4c56-0137-8cd7-0242ac110002/users,
  batch_transactions: /wallet_accounts/5c1c6b10-4c56-0137-8cd7-0242ac110002/batch_transactions,
  transactions: /wallet_accounts/5c1c6b10-4c56-0137-8cd7-0242ac110002/transactions,
  bpay_details: /wallet_accounts/5c1c6b10-4c56-0137-8cd7-0242ac110002/bpay_details,
  npp_details: /wallet_accounts/5c1c6b10-4c56-0137-8cd7-0242ac110002/npp_details
)
```

