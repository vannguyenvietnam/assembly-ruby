# AssemblyRuby::CompanyRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name | [default to &#39;ABC&#39;] |
| **legal_name** | **String** | Company legal name | [default to &#39;ABC Pty Ltd&#39;] |
| **tax_number** | **String** | ABN / Tax number | [default to &#39;123456789&#39;] |
| **charge_tax** | **Boolean** | Charge GST or not? allowed values are true or false | [optional] |
| **address_line1** | **String** | Address line 1 | [optional] |
| **address_line2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **zip** | **String** | Zip | [optional] |
| **country** | **String** | 3 digit country code (eg. AUS) | [default to &#39;AUS&#39;] |
| **phone** | **String** | Company phone number | [optional][default to &#39;&#39;] |
| **user_id** | **String** | User ID to associate with the company | [default to &#39;buyer-70729325&#39;] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::CompanyRequestBody.new(
  name: ABC,
  legal_name: ABC Pty Ltd,
  tax_number: 123456789,
  charge_tax: false,
  address_line1: Collins,
  address_line2: ,
  city: Melbourne,
  state: VIC,
  zip: 3000,
  country: AUS,
  phone: ,
  user_id: buyer-70729325
)
```

