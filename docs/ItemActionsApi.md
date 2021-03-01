# AssemblyRuby::ItemActionsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize_payment**](ItemActionsApi.md#authorize_payment) | **PATCH** /items/{id}/authorize_payment | Authorize Payment
[**cancel_item**](ItemActionsApi.md#cancel_item) | **PATCH** /items/{id}/cancel | Cancel
[**capture_payment**](ItemActionsApi.md#capture_payment) | **PATCH** /items/{id}/capture_payment | Capture Payment
[**make_payment**](ItemActionsApi.md#make_payment) | **PATCH** /items/{id}/make_payment | Make Payment
[**refund**](ItemActionsApi.md#refund) | **PATCH** /items/{id}/refund | Refund
[**void_payment**](ItemActionsApi.md#void_payment) | **PATCH** /items/{id}/void_payment | Void Payment



## authorize_payment

> SingleItem authorize_payment(id, card_account_id_request_body)

Authorize Payment

Where pre-authentication is enabled on a platform, initiates a credit card payment authorization for an item. When an authorization is successful, your platform holds the item amount for capture, but there is no transfer of funds happening. This call is used with the Capture Payment or Void Payment calls. 

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID
card_account_id_request_body = AssemblyRuby::CardAccountIdRequestBody.new # CardAccountIdRequestBody | 

begin
  #Authorize Payment
  result = api_instance.authorize_payment(id, card_account_id_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->authorize_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;]
 **card_account_id_request_body** | [**CardAccountIdRequestBody**](CardAccountIdRequestBody.md)|  | 

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_item

> SingleItem cancel_item(id)

Cancel

Cancel an **Item**. This will transition the **Item** state to `cancelled`. **Items** can only be cancelled if they haven’t been actioned in any other way.

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID

begin
  #Cancel
  result = api_instance.cancel_item(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->cancel_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;]

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_payment

> SingleItem capture_payment(id)

Capture Payment

Where pre-authentication is enabled on a platform, completes a credit card payment for an item whose payment is authorized. This call is used with the Authorize Payment call. 

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID

begin
  #Capture Payment
  result = api_instance.capture_payment(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->capture_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;]

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## make_payment

> SingleItem make_payment(id, account_id_request_body)

Make Payment

Make a payment for an **Item**. Pass the `:account_id` of a **Bank Account** or a **Card Account** associated with the **Item’s** buyer. The **Item** state will transition to one of `payment_held`, `payment_pending` or `completed` for an **Express** or **Approve** payment type. 

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID
account_id_request_body = AssemblyRuby::AccountIdRequestBody.new # AccountIdRequestBody | 

begin
  #Make Payment
  result = api_instance.make_payment(id, account_id_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->make_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;]
 **account_id_request_body** | [**AccountIdRequestBody**](AccountIdRequestBody.md)|  | 

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refund

> SingleItem refund(id, refund_request_body)

Refund

Refund an **Item**’s funds. A partial `amount` can be specified otherwise the full amount will be refunded. This will transition the **Item** state to ‘refunded’ if the full amount is refunded, or to the previously held state if a partial `amount` is specified.

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID to be refunded
refund_request_body = AssemblyRuby::RefundRequestBody.new # RefundRequestBody | 

begin
  #Refund
  result = api_instance.refund(id, refund_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->refund: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID to be refunded | [default to &#39;7190770-1-2908&#39;]
 **refund_request_body** | [**RefundRequestBody**](RefundRequestBody.md)|  | 

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_payment

> SingleItem void_payment(id)

Void Payment

Where pre-authentication is enabled on a platform, voids the `payment_authorized` status for an item. This call is used with the Authorize Payment call. **Note**: Not all payment gateways support the Void Payment API call. In this case, you can wait until a payment authorization expires. A payment authorisation expires after 3 to 6 days if not captured. 

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

api_instance = AssemblyRuby::ItemActionsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID

begin
  #Void Payment
  result = api_instance.void_payment(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemActionsApi->void_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;]

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

