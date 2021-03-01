# AssemblyRuby::RefundRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refund_amount** | **String** | For partial refunds, if they are enabled for marketplace. | [optional] [default to &#39;&#39;]
**refund_message** | **String** | Reason for the request. | [optional] [default to &#39;&#39;]
**account_id** | **String** | The account id to be used to get the refunds from. This will need to be an account that has already been set up within Assembly | [optional] [default to &#39;&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::RefundRequestBody.new(refund_amount: null,
                                 refund_message: null,
                                 account_id: null)
```


