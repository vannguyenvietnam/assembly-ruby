# AssemblyRuby::CompanyRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Company name | [default to &#39;ABC&#39;]
**legal_name** | **String** | Company legal name | [default to &#39;ABC Pty Ltd&#39;]
**tax_number** | **String** | ABN / Tax number | [default to &#39;123456789&#39;]
**charge_tax** | **String** | Charge GST or not? | [optional] [default to &#39;&#39;]
**address_line1** | **String** | Address line 1 | [optional] [default to &#39;Collins&#39;]
**address_line2** | **String** | Address line 2 | [optional] [default to &#39;&#39;]
**city** | **String** | City | [optional] [default to &#39;Melbourne&#39;]
**state** | **String** | State | [optional] [default to &#39;VIC&#39;]
**zip** | **String** | Zip | [optional] [default to &#39;3000&#39;]
**country** | **String** | 3 digit country code (eg. AUS) | [default to &#39;AUS&#39;]
**phone** | **String** | Company phone number | [optional] [default to &#39;&#39;]
**user_id** | **String** | User ID to associate with the company | [default to &#39;buyer-70729325&#39;]

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::CompanyRequestBody.new(name: ABC,
                                 legal_name: ABC Pty Ltd,
                                 tax_number: 123456789,
                                 charge_tax: null,
                                 address_line1: Collins,
                                 address_line2: null,
                                 city: Melbourne,
                                 state: VIC,
                                 zip: 3000,
                                 country: AUS,
                                 phone: null,
                                 user_id: buyer-70729325)
```


