# AssemblyRuby::ChargesApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_charge**](ChargesApi.md#create_charge) | **POST** /charges | Create Charge
[**list_charges**](ChargesApi.md#list_charges) | **GET** /charges | List Charges
[**show_charge**](ChargesApi.md#show_charge) | **GET** /charges/{id} | Show Charge
[**show_charge_buyer**](ChargesApi.md#show_charge_buyer) | **GET** /charges/{id}/buyers | Show Charge Buyer
[**show_charge_status**](ChargesApi.md#show_charge_status) | **GET** /charges/{id}/status | Show Charge Status



## create_charge

> SingleCharge create_charge(charge_request_body)

Create Charge

Create a **Charge**. **Charges** require a specified **Card Account** or **Bank Account**. You may pass through an existing **User**, or define the `user_id` of the new user that will be associated with the **Charge** and the provided Account. The `user_id` can be left blank if you wish for a new user to be created for the **Charge**, or specified if you wish for a new **User** to be created with the passed `user_id`. 

### Example

```ruby
# load the gem
require 'assembly_ruby'
# setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::ChargesApi.new
charge_request_body = AssemblyRuby::ChargeRequestBody.new # ChargeRequestBody | 

begin
  #Create Charge
  result = api_instance.create_charge(charge_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ChargesApi->create_charge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_request_body** | [**ChargeRequestBody**](ChargeRequestBody.md)|  | 

### Return type

[**SingleCharge**](SingleCharge.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_charges

> Charges list_charges(opts)

List Charges

Retrieve an ordered and paginated list of **Charges**.

### Example

```ruby
# load the gem
require 'assembly_ruby'
# setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::ChargesApi.new
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #List Charges
  result = api_instance.list_charges(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ChargesApi->list_charges: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**Charges**](Charges.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_charge

> SingleCharge show_charge(id)

Show Charge

Show details of a specific **Charge** using a given `:id`.

### Example

```ruby
# load the gem
require 'assembly_ruby'
# setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::ChargesApi.new
id = '4d7d73f5-c7f0-477d-aff8-7570d2c7e7d9' # String | Charge ID

begin
  #Show Charge
  result = api_instance.show_charge(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ChargesApi->show_charge: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Charge ID | [default to &#39;4d7d73f5-c7f0-477d-aff8-7570d2c7e7d9&#39;]

### Return type

[**SingleCharge**](SingleCharge.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_charge_buyer

> SingleUser show_charge_buyer(id)

Show Charge Buyer

Show the buyer **User** associated with the **Charge** using a given `:id`.

### Example

```ruby
# load the gem
require 'assembly_ruby'
# setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::ChargesApi.new
id = '4d7d73f5-c7f0-477d-aff8-7570d2c7e7d9/buyers' # String | Charge ID

begin
  #Show Charge Buyer
  result = api_instance.show_charge_buyer(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ChargesApi->show_charge_buyer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Charge ID | [default to &#39;4d7d73f5-c7f0-477d-aff8-7570d2c7e7d9/buyers&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_charge_status

> SingleChargeStatus show_charge_status(id)

Show Charge Status

Show status of a specific **Charge** using a given `:id`.

### Example

```ruby
# load the gem
require 'assembly_ruby'
# setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::ChargesApi.new
id = '1e5e372a-df3a-4f77-af2f-ec294b1715ce' # String | Charge ID

begin
  #Show Charge Status
  result = api_instance.show_charge_status(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ChargesApi->show_charge_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Charge ID | [default to &#39;1e5e372a-df3a-4f77-af2f-ec294b1715ce&#39;]

### Return type

[**SingleChargeStatus**](SingleChargeStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

