# AssemblyRuby::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **custom_descriptor** | **String** |  | [optional] |
| **custom_data** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **buyer_fees** | **Integer** |  | [optional] |
| **seller_fees** | **Integer** |  | [optional] |
| **credit_card_fee** | **Integer** |  | [optional] |
| **status** | **Integer** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **dynamic_descriptor** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **promisepay_fee** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **payment_method** | **String** |  | [optional] |
| **buyer_name** | **String** |  | [optional] |
| **buyer_email** | **String** |  | [optional] |
| **buyer_zip** | **String** |  | [optional] |
| **buyer_country** | **String** |  | [optional] |
| **seller_name** | **String** |  | [optional] |
| **seller_email** | **String** |  | [optional] |
| **seller_zip** | **String** |  | [optional] |
| **seller_country** | **String** |  | [optional] |
| **related** | [**ItemRelated**](ItemRelated.md) |  | [optional] |
| **links** | [**ChargeLinks**](ChargeLinks.md) |  | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::Charge.new(
  id: cb7eafc1-571c-425c-9adc-f56cb585cd68,
  name: Charge for Delivery,
  custom_descriptor: null,
  custom_data: null,
  created_at: null,
  updated_at: null,
  state: completed,
  buyer_fees: 0,
  seller_fees: 400,
  credit_card_fee: 0,
  status: 22500,
  amount: 20000,
  dynamic_descriptor: ASM*Samuel Seller,
  account_id: b49d943f-add0-4d1c-b357-0f1a8fde677c,
  account_type: credit card,
  promisepay_fee: 187,
  currency: AUD,
  payment_method: charge,
  buyer_name: Anonymous Buyer,
  buyer_email: anonymous+buyer+1@assemblypayments.com,
  buyer_zip: 3000,
  buyer_country: AUS,
  seller_name: Anonymous Seller,
  seller_email: anonymous+seller+1@assemblypayments.com,
  seller_zip: 3000,
  seller_country: AUS,
  related: null,
  links: null
)
```

