# AssemblyRuby::DirectDebitAuthority

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**amount** | **String** |  | [optional] 
**bank_bsb** | **String** |  | [optional] 
**debit_user_id** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**related** | [**DirectDebitAuthorityRelated**](DirectDebitAuthorityRelated.md) |  | [optional] 
**links** | [**DirectDebitAuthorityLinks**](DirectDebitAuthorityLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::DirectDebitAuthority.new(id: 8f233e04-ffaa-4c9d-adf9-244853848e21,
                                 created_at: null,
                                 updated_at: null,
                                 amount: 100000,
                                 bank_bsb: 83001,
                                 debit_user_id: 481561,
                                 state: approved,
                                 related: null,
                                 links: null)
```


