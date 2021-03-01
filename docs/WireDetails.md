# AssemblyRuby::WireDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beneficiary** | **String** |  | [optional] 
**address_line1** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**state** | **String** |  | [optional] 
**zip** | **String** |  | [optional] 
**routing_number** | **String** |  | [optional] 
**account_number** | **String** |  | [optional] 
**bank_name** | **String** |  | [optional] 
**swift** | **String** |  | [optional] 
**reference** | **String** |  | [optional] 
**amount** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**country** | **String** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::WireDetails.new(beneficiary: Assembly Payments,
                                 address_line1: 500 Bourke Street,
                                 city: Melbourne,
                                 state: VIC,
                                 zip: 3000,
                                 routing_number: 83001,
                                 account_number: 844144573,
                                 bank_name: National Australia Bank,
                                 swift: NATAAU3303M,
                                 reference: 100014013961629,
                                 amount: $250.00,
                                 currency: AUD,
                                 country: Australia)
```


