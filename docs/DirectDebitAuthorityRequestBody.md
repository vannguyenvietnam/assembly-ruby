# AssemblyRuby::DirectDebitAuthorityRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | Bank account ID | [default to &#39;7fac6c60-6f5b-0138-eb9a-0a58a9feac03&#39;]
**amount** | **String** | Amount for direct debit in cents | [default to &#39;100&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::DirectDebitAuthorityRequestBody.new(account_id: 7fac6c60-6f5b-0138-eb9a-0a58a9feac03,
                                 amount: 100)
```


