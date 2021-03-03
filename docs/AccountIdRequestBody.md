# AssemblyRuby::AccountIdRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id of the bank account/credit card, etc making payment (not user id) | [default to &#39;725cc8c0-759b-0138-5d6d-0a58a9feac05&#39;] |
| **device_id** | **String** | Device Information for the device initiating the payment. This will need to be provided for card payments. | [optional] |
| **ip_address** | **String** | IP Information for the device initiating the payment. This will need to be provided for card payments. | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::AccountIdRequestBody.new(
  account_id: 725cc8c0-759b-0138-5d6d-0a58a9feac05,
  device_id: ,
  ip_address: 
)
```

