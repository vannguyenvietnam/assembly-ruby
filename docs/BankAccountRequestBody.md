# AssemblyRuby::BankAccountRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | User ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]
**bank_name** | **String** | Bank name | [default to &#39;Bank of Australia&#39;]
**account_name** | **String** | Account name | [default to &#39;Samuel Seller&#39;]
**routing_number** | **String** | *Required conditionally* - Routing number / SWIFT code / BSB number. See [Bank account formats by country](https://developer.assemblypayments.com/docs/input-formats).  | [default to &#39;111123&#39;]
**account_number** | **String** | Account number / IBAN. See [Bank account formats by country](https://developer.assemblypayments.com/docs/input-formats).  | [default to &#39;111234&#39;]
**account_type** | **String** | Bank account type (savings or checking) | [default to &#39;checking&#39;]
**holder_type** | **String** | Holder type (personal or business) | [default to &#39;personal&#39;]
**country** | **String** | [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3#Officially_assigned_code_elements) country code (3 char) | [default to &#39;AUS&#39;]
**payout_currency** | **String** | [ISO 4217 alpha-3](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) currency code. This parameter determines the currency with which funds are paid out. | [optional] 
**currency** | **String** | [ISO 4217 alpha-3](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) currency code. This is an optional field and if not provided, the item will be created with the default currency of the marketplace. | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BankAccountRequestBody.new(user_id: aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee,
                                 bank_name: Bank of Australia,
                                 account_name: Samuel Seller,
                                 routing_number: 111123,
                                 account_number: 111234,
                                 account_type: checking,
                                 holder_type: personal,
                                 country: AUS,
                                 payout_currency: AUD,
                                 currency: AUD)
```


