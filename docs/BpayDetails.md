# AssemblyRuby::BpayDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**biller_code** | **String** |  | [optional] 
**amount** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**reference** | **String** |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::BpayDetails.new(biller_code: 230680,
                                 amount: $250.00,
                                 currency: AUD,
                                 reference: 100014013961629)
```


