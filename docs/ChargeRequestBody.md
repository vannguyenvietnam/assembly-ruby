# AssemblyRuby::ChargeRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Bank Account or Card Account ID | [default to &#39;5ef44050-4c56-0137-abdf-0242ac110002&#39;]
**name** | **String** | Description of the Charge being created. | [optional] [default to &#39;Test Charge 001&#39;]
**amount** | **String** | The cost being charged in cents. | [default to &#39;1000&#39;]
**email** | **String** | Email of the user associated with the account being charged. | [default to &#39;buyer-1556505753@promisepay.com&#39;]
**zip** | **Integer** | Postcode | 
**country** | **String** | [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3#Officially_assigned_code_elements) country code of the User being charged. | [default to &#39;AUS&#39;]
**user_id** | **String** | The ID of the User | [optional] [default to &#39;buyer-1556505753&#39;]
**fee_ids** | **String** | A comma separated list of fee IDs to apply | [optional] [default to &#39;&#39;]
**currency** | **String** | [ISO 4217 alpha-3](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) currency code. This is an optional field and if not provided, the item will be created with the default currency of the marketplace. | [optional] [default to &#39;AUD&#39;]
**retain_account** | **Boolean** | True - Enables the account to be charged in the future. False - Redacts the account after this charge.  | [optional] [default to false]
**device_id** | **String** | Device Information for the device initiating the payment | [optional] [default to &#39;&#39;]
**ip_address** | **String** | IP Information for the device initiating the payment | [optional] [default to &#39;&#39;]
**custom_descriptor** | **String** | When &#x60;custom_descriptors&#x60; are enabled, this is the information to appear on credit card and direct debit statements. | [optional] [default to &#39;&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::ChargeRequestBody.new(account_id: 5ef44050-4c56-0137-abdf-0242ac110002,
                                 name: Test Charge 001,
                                 amount: 1000,
                                 email: buyer-1556505753@promisepay.com,
                                 zip: 3000,
                                 country: AUS,
                                 user_id: buyer-1556505753,
                                 fee_ids: null,
                                 currency: AUD,
                                 retain_account: null,
                                 device_id: null,
                                 ip_address: null,
                                 custom_descriptor: null)
```


