# AssemblyRuby::TokenAuthRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token_type** | **String** | Token type ID. use &#x60;bank&#x60; or &#x60;card&#x60; | [default to &#39;bank&#39;]
**user_id** | **String** | Buyer or Seller ID (already created) | [default to &#39;seller-68611249&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::TokenAuthRequestBody.new(token_type: bank,
                                 user_id: seller-68611249)
```


