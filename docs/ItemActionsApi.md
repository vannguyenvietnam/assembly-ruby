# AssemblyRuby::ItemActionsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_payment**](ItemActionsApi.md#authorize_payment) | **PATCH** /items/{id}/authorize_payment | Authorize Payment |
| [**cancel_item**](ItemActionsApi.md#cancel_item) | **PATCH** /items/{id}/cancel | Cancel |
| [**capture_payment**](ItemActionsApi.md#capture_payment) | **PATCH** /items/{id}/capture_payment | Capture Payment |
| [**make_payment**](ItemActionsApi.md#make_payment) | **PATCH** /items/{id}/make_payment | Make Payment |
| [**refund**](ItemActionsApi.md#refund) | **PATCH** /items/{id}/refund | Refund |
| [**release_payment**](ItemActionsApi.md#release_payment) | **PATCH** /items/{id}/release_payment | Release Payment (Deprecated - Do Not Use) |
| [**void_payment**](ItemActionsApi.md#void_payment) | **PATCH** /items/{id}/void_payment | Void Payment |


## authorize_payment

> <SingleItem> authorize_payment(id, card_account_id_request_body)

Authorize Payment

Where pre-authentication is enabled on a platform, initiates a credit card payment authorization for an item. When an authorization is successful, your platform holds the item amount for capture, but there is no transfer of funds happening. This call is used with the Capture Payment or Void Payment calls. 

### Examples

```ruby
require 'time'
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
card_account_id_request_body = AssemblyRuby::CardAccountIdRequestBody.new({account_id: '725cc8c0-759b-0138-5d6d-0a58a9feac05'}) # CardAccountIdRequestBody | 

begin
  # Authorize Payment
  result = api_instance.authorize_payment(id, card_account_id_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->authorize_payment: #{e}"
end
```

#### Using the authorize_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> authorize_payment_with_http_info(id, card_account_id_request_body)

```ruby
begin
  # Authorize Payment
  data, status_code, headers = api_instance.authorize_payment_with_http_info(id, card_account_id_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->authorize_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |
| **card_account_id_request_body** | [**CardAccountIdRequestBody**](CardAccountIdRequestBody.md) |  |  |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_item

> <SingleItem> cancel_item(id)

Cancel

Cancel an **Item**. This will transition the **Item** state to `cancelled`. **Items** can only be cancelled if they haven’t been actioned in any other way.

### Examples

```ruby
require 'time'
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
  # Cancel
  result = api_instance.cancel_item(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->cancel_item: #{e}"
end
```

#### Using the cancel_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> cancel_item_with_http_info(id)

```ruby
begin
  # Cancel
  data, status_code, headers = api_instance.cancel_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->cancel_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_payment

> <SingleItem> capture_payment(id)

Capture Payment

Where pre-authentication is enabled on a platform, completes a credit card payment for an item whose payment is authorized. This call is used with the Authorize Payment call. 

### Examples

```ruby
require 'time'
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
  # Capture Payment
  result = api_instance.capture_payment(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->capture_payment: #{e}"
end
```

#### Using the capture_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> capture_payment_with_http_info(id)

```ruby
begin
  # Capture Payment
  data, status_code, headers = api_instance.capture_payment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->capture_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## make_payment

> <SingleItem> make_payment(id, account_id_request_body)

Make Payment

Make a payment for an **Item**. Pass the `:account_id` of a **Bank Account** or a **Card Account** associated with the **Item’s** buyer. The **Item** state will transition to one of `payment_held`, `payment_pending` or `completed` for an **Express** or **Approve** payment type. 

### Examples

```ruby
require 'time'
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
account_id_request_body = AssemblyRuby::AccountIdRequestBody.new({account_id: '725cc8c0-759b-0138-5d6d-0a58a9feac05'}) # AccountIdRequestBody | 

begin
  # Make Payment
  result = api_instance.make_payment(id, account_id_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->make_payment: #{e}"
end
```

#### Using the make_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> make_payment_with_http_info(id, account_id_request_body)

```ruby
begin
  # Make Payment
  data, status_code, headers = api_instance.make_payment_with_http_info(id, account_id_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->make_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |
| **account_id_request_body** | [**AccountIdRequestBody**](AccountIdRequestBody.md) |  |  |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refund

> <SingleItem> refund(id, refund_request_body)

Refund

Refund an **Item**’s funds. A partial `amount` can be specified otherwise the full amount will be refunded. This will transition the **Item** state to ‘refunded’ if the full amount is refunded, or to the previously held state if a partial `amount` is specified.

### Examples

```ruby
require 'time'
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
  # Refund
  result = api_instance.refund(id, refund_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->refund: #{e}"
end
```

#### Using the refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> refund_with_http_info(id, refund_request_body)

```ruby
begin
  # Refund
  data, status_code, headers = api_instance.refund_with_http_info(id, refund_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID to be refunded | [default to &#39;7190770-1-2908&#39;] |
| **refund_request_body** | [**RefundRequestBody**](RefundRequestBody.md) |  |  |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_payment

> <SingleItem> release_payment(id, release_payment_request_body)

Release Payment (Deprecated - Do Not Use)

Included for legacy purposes for existing customers that use Escrow payments which are no longer supported for new flows/customers. Release funds held in escrow from an **Item** with an **Escrow** or **Escrow Partial Release** payment type.  This will transition the **Item** state to `completed`.

### Examples

```ruby
require 'time'
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
release_payment_request_body = AssemblyRuby::ReleasePaymentRequestBody.new # ReleasePaymentRequestBody | 

begin
  # Release Payment (Deprecated - Do Not Use)
  result = api_instance.release_payment(id, release_payment_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->release_payment: #{e}"
end
```

#### Using the release_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> release_payment_with_http_info(id, release_payment_request_body)

```ruby
begin
  # Release Payment (Deprecated - Do Not Use)
  data, status_code, headers = api_instance.release_payment_with_http_info(id, release_payment_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->release_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |
| **release_payment_request_body** | [**ReleasePaymentRequestBody**](ReleasePaymentRequestBody.md) |  |  |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_payment

> <SingleItem> void_payment(id)

Void Payment

Where pre-authentication is enabled on a platform, voids the `payment_authorized` status for an item. This call is used with the Authorize Payment call. **Note**: Not all payment gateways support the Void Payment API call. In this case, you can wait until a payment authorization expires. A payment authorisation expires after 3 to 6 days if not captured. 

### Examples

```ruby
require 'time'
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
  # Void Payment
  result = api_instance.void_payment(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->void_payment: #{e}"
end
```

#### Using the void_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleItem>, Integer, Hash)> void_payment_with_http_info(id)

```ruby
begin
  # Void Payment
  data, status_code, headers = api_instance.void_payment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleItem>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling ItemActionsApi->void_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Marketplace / Platform item ID | [default to &#39;7190770-1-2908&#39;] |

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

