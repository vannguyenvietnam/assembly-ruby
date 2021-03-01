# AssemblyRuby::BatchTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**status** | **String** |  | [optional] 
**uuid** | **String** |  | [optional] 
**disbursement_bank** | **String** |  | [optional] 
**processing_bank** | **String** |  | [optional] 
**external_reference** | **String** |  | [optional] 
**reference_amount** | **String** |  | [optional] 
**internal_state** | **String** |  | [optional] 
**internal_status** | **String** |  | [optional] 
**account_external** | [**BatchTransactionAccountExternal**](BatchTransactionAccountExternal.md) |  | [optional] 
**external_account_details** | **String** |  | [optional] 
**external_account_details_encrypted** | **Boolean** |  | [optional] 
**marketplace** | [**BatchTransactionMarketplace**](BatchTransactionMarketplace.md) |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**user_email** | **String** |  | [optional] 
**user_external_id** | **String** |  | [optional] 
**legal_entity_id** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**payout_currency** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**type_method** | **String** |  | [optional] 
**batch_id** | **Integer** |  | [optional] 
**cuscal_payment_transaction_id** | **String** |  | [optional] 
**reference** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**account_id** | **String** |  | [optional] 
**account_type** | **String** |  | [optional] 
**from_user_name** | **String** |  | [optional] 
**from_user_id** | **String** |  | [optional] 
**refund_state** | **String** |  | [optional] 
**amount** | **Integer** |  | [optional] 
**currency** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**address_line1** | **String** |  | [optional] 
**address_line2** | **String** |  | [optional] 
**address_city** | **String** |  | [optional] 
**address_state** | **String** |  | [optional] 
**address_postcode** | **String** |  | [optional] 
**address_country** | [**BatchTransactionAddressCountry**](BatchTransactionAddressCountry.md) |  | [optional] 
**country** | **String** |  | [optional] 
**debit_credit** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**item** | [**BatchTransactionItem**](BatchTransactionItem.md) |  | [optional] 
**deposit_reference** | **String** |  | [optional] 
**related** | [**BatchTransactionRelated**](BatchTransactionRelated.md) |  | [optional] 
**links** | [**BatchTransactionLinks**](BatchTransactionLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BatchTransaction.new(id: null,
                                 created_at: null,
                                 updated_at: null,
                                 status: 12200,
                                 uuid: null,
                                 disbursement_bank: Bank A,
                                 processing_bank: Bank A,
                                 external_reference: null,
                                 reference_amount: null,
                                 internal_state: null,
                                 internal_status: null,
                                 account_external: null,
                                 external_account_details: null,
                                 external_account_details_encrypted: null,
                                 marketplace: null,
                                 first_name: first name,
                                 last_name: last name,
                                 user_email: email@email.com,
                                 user_external_id: buyer-71391895,
                                 legal_entity_id: 49fac28b-5628-4cec-854f-58a9b87dd58d,
                                 phone: 1588681395,
                                 payout_currency: null,
                                 type: disbursement,
                                 type_method: direct_credit,
                                 batch_id: 302,
                                 cuscal_payment_transaction_id: null,
                                 reference: null,
                                 state: batched,
                                 user_id: 064d6800-fff3-11e5-86aa-5e5517507c66,
                                 account_id: e57120ea-053d-11e6-b512-3e1d05defe78,
                                 account_type: item,
                                 from_user_name: payer,
                                 from_user_id: 064d6800-fff3-11e5-86aa-5e5517507c66,
                                 refund_state: null,
                                 amount: 9800,
                                 currency: AUD,
                                 company: ABC Pty Ltd,
                                 address_line1: Courtland Ave.,
                                 address_line2: Building 1,
                                 address_city: Melbourne,
                                 address_state: VIC,
                                 address_postcode: 3000,
                                 address_country: null,
                                 country: AUD,
                                 debit_credit: credit,
                                 description: Credit of $98.00 to Item by Debit of $98.00 from Wallet Account,
                                 item: null,
                                 deposit_reference: AUD,
                                 related: null,
                                 links: null)
```


