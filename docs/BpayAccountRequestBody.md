# AssemblyRuby::BpayAccountRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID | [default to &#39;725cc8c0-759b-0138-5d6d-0a58a9feac05&#39;] |
| **account_name** | **String** | Name assigned by the platform/marketplace to identify the account (similar to a nickname) | [default to &#39;My Water Bill Company&#39;] |
| **biller_code** | **Integer** | The Biller Code for the biller that will receive the payment. The Biller Code must be a numeric value with 3 to 10 digits. |  |
| **bpay_crn** | **String** | Customer reference number (crn) to be used for this bpay account. The CRN must contain between 2 and 20 digits. | [default to &#39;987654321&#39;] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::BpayAccountRequestBody.new(
  user_id: 725cc8c0-759b-0138-5d6d-0a58a9feac05,
  account_name: My Water Bill Company,
  biller_code: 123456,
  bpay_crn: 987654321
)
```

