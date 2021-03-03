# AssemblyRuby::DepositRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account to deposit from. | [default to &#39;c1824ad0-73f1-0138-3700-0a58a9feac09&#39;] |
| **amount** | **Integer** | Amount (in cents) to deposit. |  |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::DepositRequestBody.new(
  account_id: c1824ad0-73f1-0138-3700-0a58a9feac09,
  amount: 100
)
```

