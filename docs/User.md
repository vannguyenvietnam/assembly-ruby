# AssemblyRuby::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**full_name** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**mobile** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**logo_url** | **String** |  | [optional] 
**color_1** | **String** |  | [optional] 
**color_2** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**custom_descriptor** | **String** |  | [optional] 
**location** | **String** |  | [optional] 
**verification_status** | **String** |  | [optional] 
**held_state** | **Boolean** |  | [optional] 
**roles** | **Array&lt;String&gt;** |  | [optional] 
**dob** | **String** |  | [optional] 
**government_number** | **String** |  | [optional] 
**drivers_license** | **String** |  | [optional] 
**flags** | [**Object**](.md) |  | [optional] 
**related** | [**UserRelated**](UserRelated.md) |  | [optional] 
**links** | [**UserLinks**](UserLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'AssemblyRuby'

instance = AssemblyRuby::User.new(created_at: null,
                                 updated_at: null,
                                 full_name: Samuel Seller,
                                 email: samuel.seller@assemblypayments.com,
                                 mobile: 61491570156,
                                 phone: null,
                                 logo_url: null,
                                 color_1: null,
                                 color_2: null,
                                 first_name: Samuel,
                                 last_name: Seller,
                                 id: Seller_1234,
                                 custom_descriptor: null,
                                 location: AUS,
                                 verification_status: pending,
                                 held_state: false,
                                 roles: null,
                                 dob: encrypted,
                                 government_number: encrypted,
                                 drivers_license: null,
                                 flags: null,
                                 related: null,
                                 links: null)
```


