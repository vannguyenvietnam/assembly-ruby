# AssemblyRuby::ChargeLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_self** | **String** |  | [optional] 
**buyers** | **String** |  | [optional] 
**sellers** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**fees** | **String** |  | [optional] 
**transactions** | **String** |  | [optional] 
**batch_transactions** | **String** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::ChargeLinks.new(_self: /charges?limit&#x3D;2&amp;offset,
                                 buyers: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/buyers,
                                 sellers: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/sellers,
                                 status: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/status,
                                 fees: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/fees,
                                 transactions: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/transactions,
                                 batch_transactions: /charges/cb7eafc1-571c-425c-9adc-f56cb585cd68/batch_transactions)
```


