# AssemblyRuby::FeesApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fee**](FeesApi.md#create_fee) | **POST** /fees | Create fee
[**list_fees**](FeesApi.md#list_fees) | **GET** /fees | List Fees
[**show_fee**](FeesApi.md#show_fee) | **GET** /fees/{id} | Show Fee



## create_fee

> SingleFee create_fee(fee_request_body)

Create fee

Create a **Fee** to be associated with an **Item**. **Fees** will add or subtract from the **Item** amount based on the **User**, payment type or Disbursement account type. **Fees** can be `Fixed` or `Percentage` based. **Fees** can be capped, have a maximum amount and/or a minimum amount. 

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

api_instance = AssemblyRuby::FeesApi.new
fee_request_body = AssemblyRuby::FeeRequestBody.new # FeeRequestBody | 

begin
  #Create fee
  result = api_instance.create_fee(fee_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling FeesApi->create_fee: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fee_request_body** | [**FeeRequestBody**](FeeRequestBody.md)|  | 

### Return type

[**SingleFee**](SingleFee.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_fees

> Fees list_fees(opts)

List Fees

Retrieve an ordered and paginated list of existing **Fees**.

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

api_instance = AssemblyRuby::FeesApi.new
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #List Fees
  result = api_instance.list_fees(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling FeesApi->list_fees: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**Fees**](Fees.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_fee

> SingleFee show_fee(id, item_amount)

Show Fee

Show details of a specific **Fee** using a given `:id`. If the `item_amount` is specified, the response also shows the `calculated_fee` based on a percentage of the `item_amount`. 

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

api_instance = AssemblyRuby::FeesApi.new
id = '1e5e372a-df3a-4f77-af2f-ec294b1715ce' # String | Fee ID
item_amount = 200 # Integer | The cost of the item in cents on which the calculated Fee is based

begin
  #Show Fee
  result = api_instance.show_fee(id, item_amount)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling FeesApi->show_fee: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Fee ID | [default to &#39;1e5e372a-df3a-4f77-af2f-ec294b1715ce&#39;]
 **item_amount** | **Integer**| The cost of the item in cents on which the calculated Fee is based | 

### Return type

[**SingleFee**](SingleFee.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

