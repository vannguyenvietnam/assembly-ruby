# AssemblyRuby::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional] |
| **amount** | **Integer** |  |  |
| **payment_type_id** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **buyer_name** | **String** |  | [optional] |
| **buyer_email** | **String** |  | [optional] |
| **buyer_country** | **String** |  | [optional] |
| **seller_name** | **String** |  | [optional] |
| **seller_email** | **String** |  | [optional] |
| **seller_country** | **String** |  | [optional] |
| **tds_check_state** | **String** |  | [optional] |
| **batch_state** | **String** |  | [optional] |
| **invoice_url** | **String** |  | [optional] |
| **payout_descriptor** | **String** |  | [optional] |
| **remaining_amount** | **Integer** |  | [optional] |
| **requested_release_amount** | **Integer** |  | [optional] |
| **custom_descriptor** | **String** |  | [optional] |
| **net_amount** | **Integer** |  | [optional] |
| **chargedback_amount** | **Integer** |  | [optional] |
| **refunded_amount** | **Integer** |  | [optional] |
| **released_amount** | **Integer** |  | [optional] |
| **buyer_fees** | **Integer** |  | [optional] |
| **seller_fees** | **Integer** |  | [optional] |
| **credit_card_fee** | **Integer** |  | [optional] |
| **paypal_fee** | **Integer** |  | [optional] |
| **seller_url** | **String** |  | [optional] |
| **buyer_url** | **String** |  | [optional] |
| **direct_debit_fee** | **Integer** |  | [optional] |
| **due_date** | **Date** |  | [optional] |
| **pending_release_amount** | **Integer** |  | [optional] |
| **dynamic_descriptor** | **String** |  | [optional] |
| **deposit_reference** | **String** |  | [optional] |
| **promisepay_fee** | **Integer** |  | [optional] |
| **total_outstanding** | **Integer** |  | [optional] |
| **total_amount** | **Integer** |  | [optional] |
| **payment_method** | **String** |  | [optional] |
| **payment_credit_card_enabled** | **Boolean** |  | [optional] |
| **payment_direct_debit_enabled** | **Boolean** |  | [optional] |
| **related** | [**ItemRelated**](ItemRelated.md) |  | [optional] |
| **links** | [**ItemLinks**](ItemLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Item.new(
  id: 100fd4a0-0538-11e6-b512-3e1d05defe78,
  name: Landscaping Job #001,
  description: Planting of natives, removal of tree stump.,
  created_at: null,
  updated_at: null,
  state: pending,
  status: 22000,
  amount: 20000,
  payment_type_id: 2,
  currency: AUD,
  buyer_name: Bella Buyer,
  buyer_email: bella.buyer@assemblypayments.com,
  buyer_country: AUS,
  seller_name: Samuel Seller,
  seller_email: samuel.seller@assemblypayments.com,
  seller_country: AUS,
  tds_check_state: NA,
  batch_state: null,
  invoice_url: null,
  payout_descriptor: null,
  remaining_amount: 0,
  requested_release_amount: 0,
  custom_descriptor: null,
  net_amount: 20000,
  chargedback_amount: 0,
  refunded_amount: 0,
  released_amount: 0,
  buyer_fees: 0,
  seller_fees: 400,
  credit_card_fee: 0,
  paypal_fee: 0,
  seller_url: null,
  buyer_url: null,
  direct_debit_fee: 0,
  due_date: null,
  pending_release_amount: 0,
  dynamic_descriptor: null,
  deposit_reference: 100014013961629,
  promisepay_fee: 350,
  total_outstanding: 20000,
  total_amount: 20000,
  payment_method: pending,
  payment_credit_card_enabled: true,
  payment_direct_debit_enabled: true,
  related: null,
  links: null
)
```

