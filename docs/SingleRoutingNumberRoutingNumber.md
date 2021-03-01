# AssemblyRuby::SingleRoutingNumberRoutingNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routing_number** | **String** |  | [optional] 
**customer_name** | **String** |  | [optional] 
**address** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**state_code** | **String** |  | [optional] 
**zip** | **String** |  | [optional] 
**zip_extension** | **String** |  | [optional] 
**phone_area_code** | **String** |  | [optional] 
**phone_prefix** | **String** |  | [optional] 
**phone_suffix** | **String** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::SingleRoutingNumberRoutingNumber.new(routing_number: 122235821,
                                 customer_name: US BANK NA,
                                 address: EP-MN-WN1A,
                                 city: ST. PAUL,
                                 state_code: MN,
                                 zip: 55107,
                                 zip_extension: 1419,
                                 phone_area_code: 800,
                                 phone_prefix: 937,
                                 phone_suffix: 6310)
```


