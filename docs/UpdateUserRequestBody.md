# AssemblyRuby::UpdateUserRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the user | [default to &#39;Neol1556506027&#39;] |
| **last_name** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email of the user. Unique to platform. | [optional] |
| **mobile** | **String** | International number format. Include ’+’ and no spaces. | [optional] |
| **address_line1** | **String** | First line of the user address | [optional] |
| **address_line2** | **String** | Second line of the user address | [optional] |
| **state** | **String** | State section of the user address | [optional] |
| **city** | **String** | City section of the user address | [optional] |
| **zip** | **String** | Postcode | [optional] |
| **country** | **String** | [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3#Officially_assigned_code_elements) country code (3 char) | [optional] |
| **dob** | **String** | Date of Birth (DD/MM/YYYY). | [optional] |
| **government_number** | **String** | Generic parameter to capture important user verification data. eg. SSN for US users, TFN for AU users. | [optional] |
| **drivers_license_number** | **String** | Driving license number of the user | [optional] |
| **drivers_license_state** | **String** | State section of the user&#39;s driving license | [optional] |
| **ip_address** | **String** | IP address | [optional] |
| **logo_url** | **String** | URL link to the logo | [optional] |
| **color_1** | **String** | Color code number 1 | [optional] |
| **color_2** | **String** | Color code number 2 | [optional] |
| **custom_descriptor** | **String** | When custom_descriptors are enabled, this is the information to appear on bundle direct debit statements (which show the buyer&#39;s custom_descriptor) as well as international wire payout, direct credit and PayPal payout statements (which show the seller&#39;s custom_descriptor) | [optional] |

## Example

```ruby
require 'assembly_ruby'

instance = AssemblyRuby::UpdateUserRequestBody.new(
  first_name: Neol1556506027,
  last_name: Calangi,
  email: neol.calangi+buyer1556506027@promisepay.com,
  mobile: +21556506027,
  address_line1: ,
  address_line2: ,
  state: ,
  city: ,
  zip: ,
  country: AUS,
  dob: null,
  government_number: ,
  drivers_license_number: ,
  drivers_license_state: ,
  ip_address: ,
  logo_url: ,
  color_1: ,
  color_2: ,
  custom_descriptor: 
)
```

