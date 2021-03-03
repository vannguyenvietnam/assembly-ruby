# AssemblyRuby::WithdrawRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account to withdraw to. | [default to &#39;c1824ad0-73f1-0138-3700-0a58a9feac09&#39;] |
| **amount** | **Integer** | Amount (in cents) to withdraw. |  |
| **custom_descriptor** | **String** | A descriptor specified by the customer to be passed on the withdraw call. This requires that custom_descriptors are enabled. In the case of fast payments (AU / NPP) Assembly will append a value in the beginning of descriptor, the customer can use 200 characters (excluding URL, javascript/code, emojis). In the case of DE batch payments will allow 18 characters | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::WithdrawRequestBody.new(
  account_id: c1824ad0-73f1-0138-3700-0a58a9feac09,
  amount: 173,
  custom_descriptor: 
)
```

