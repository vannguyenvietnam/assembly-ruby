# AssemblyRuby::Disbursement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **batch_id** | **String** |  | [optional] |
| **cuscal_payment_transaction_id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **bank_account_name** | **String** |  | [optional] |
| **bank_account_number** | **String** |  | [optional] |
| **bank_routing_number** | **String** |  | [optional] |
| **npp_payout_state** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **biller_name** | **String** |  | [optional] |
| **biller_code** | **String** |  | [optional] |
| **crn** | **String** |  | [optional] |
| **links** | [**DisbursementLinks**](DisbursementLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Disbursement.new(
  id: ad688d54-6791-4f1d-add7-88fbd89b70d1,
  amount: 10000,
  currency: AUD,
  batch_id: null,
  cuscal_payment_transaction_id: null,
  created_at: null,
  updated_at: null,
  state: pending,
  to: Bank Account,
  bank_name: Bank of Australia,
  bank_account_name: Samuel Seller,
  bank_account_number: XXX234,
  bank_routing_number: XXXXX3,
  npp_payout_state: trying,
  account_name: My Water Company,
  biller_name: ABC Water,
  biller_code: 123456,
  crn: 987654321,
  links: null
)
```

