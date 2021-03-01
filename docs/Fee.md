# AssemblyRuby::Fee

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**name** | **String** |  | [optional] 
**fee_type_id** | **String** |  | [optional] 
**amount** | **String** |  | [optional] 
**cap** | **String** |  | [optional] 
**min** | **String** |  | [optional] 
**max** | **String** |  | [optional] 
**to** | **String** |  | [optional] 
**calculated_fee** | **Integer** | This field is only shown in case an item amount is passed | [optional] [readonly] 
**links** | [**AddressAddressesLinks**](AddressAddressesLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::Fee.new(id: 36020976-f345-4d0f-b860-9c025ccce668,
                                 created_at: null,
                                 updated_at: null,
                                 name: Seller Success Fee,
                                 fee_type_id: 2,
                                 amount: 200,
                                 cap: null,
                                 min: null,
                                 max: null,
                                 to: seller,
                                 calculated_fee: 400,
                                 links: null)
```


