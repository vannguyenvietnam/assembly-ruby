# AssemblyRuby::RefundRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refund_amount** | **Integer** | For partial refunds, if they are enabled for marketplace. | [optional] |
| **refund_message** | **String** | Reason for the request. | [optional] |
| **account_id** | **String** | The account id to be used to get the refunds from. This will need to be an account that has already been set up within Assembly | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::RefundRequestBody.new(
  refund_amount: null,
  refund_message: ,
  account_id: 
)
```

