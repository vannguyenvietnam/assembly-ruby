# AssemblyRuby::BankAccountBankAccountsBank

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bank_name** | **String** |  | [optional] 
**country** | **String** |  | [optional] 
**account_name** | **String** |  | [optional] 
**routing_number** | **String** |  | [optional] 
**account_number** | **String** |  | [optional] 
**holder_type** | **String** |  | [optional] 
**account_type** | **String** |  | [optional] 
**direct_debit_authority_status** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BankAccountBankAccountsBank.new(bank_name: Bank of Australia,
                                 country: AUS,
                                 account_name: Samuel Seller,
                                 routing_number: XXXXX3,
                                 account_number: XXX234,
                                 holder_type: personal,
                                 account_type: checking,
                                 direct_debit_authority_status: approved)
```


