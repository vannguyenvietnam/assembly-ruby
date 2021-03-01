# AssemblyRuby::BankAccountBankAccounts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**id** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**verification_status** | **String** |  | [optional] 
**bank** | [**BankAccountBankAccountsBank**](BankAccountBankAccountsBank.md) |  | [optional] 
**links** | [**BankAccountBankAccountsLinks**](BankAccountBankAccountsLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BankAccountBankAccounts.new(active: true,
                                 created_at: null,
                                 updated_at: null,
                                 id: 46deb476-c1a6-41eb-8eb7-26a695bbe5bc,
                                 currency: AUD,
                                 verification_status: not_verified,
                                 bank: null,
                                 links: null)
```


