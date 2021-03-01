# AssemblyRuby::UpdateItemRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | The cost in cents | [optional] [default to &#39;102&#39;]
**name** | **String** | A name for the item | [optional] [default to &#39;Item 7190770-1-2908&#39;]
**buyer_id** | **String** | Marketplace / Pltform buyer ID | [optional] [default to &#39;buyer-719013950014&#39;]
**seller_id** | **String** | Marketplace / Platform Seller ID | [optional] [default to &#39;seller-71718579&#39;]
**description** | **String** | A description of the item | [optional] [default to &#39;Test Item 7190770-1-2908&#39;]
**custom_descriptor** | **String** | When &#x60;custom_descriptors&#x60; are enabled, this is the information to appear on credit card and direct debit statements. | [optional] [default to &#39;&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::UpdateItemRequestBody.new(amount: 102,
                                 name: Item 7190770-1-2908,
                                 buyer_id: buyer-719013950014,
                                 seller_id: seller-71718579,
                                 description: Test Item 7190770-1-2908,
                                 custom_descriptor: null)
```


