# AssemblyRuby::CardAccountRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**full_name** | **String** | User full name with at least a space | [default to &#39;John Doe&#39;]
**number** | **String** | Account number | [default to &#39;4444111122223333&#39;]
**expiry_month** | **Integer** | Expiry month (MM) | 
**expiry_year** | **Integer** | Expiry year (YYYY) | 
**cvv** | **String** | CVV / CVC | [default to &#39;123&#39;]
**user_id** | **String** | User ID | [default to &#39;83f54680-9600-4bee-a6d1-84a5d0e10059&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::CardAccountRequestBody.new(full_name: John Doe,
                                 number: 4444111122223333,
                                 expiry_month: 1,
                                 expiry_year: 2025,
                                 cvv: 123,
                                 user_id: 83f54680-9600-4bee-a6d1-84a5d0e10059)
```


