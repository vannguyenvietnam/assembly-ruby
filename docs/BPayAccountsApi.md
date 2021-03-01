# AssemblyRuby::BPayAccountsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_b_pay_account**](BPayAccountsApi.md#create_b_pay_account) | **POST** /bpay_accounts | Create BPay Account
[**redact_b_pay_account**](BPayAccountsApi.md#redact_b_pay_account) | **DELETE** /bpay_accounts/{id} | Redact BPay Account (Future Feature)
[**show_b_pay_account**](BPayAccountsApi.md#show_b_pay_account) | **GET** /bpay_accounts/{id} | Show BPay Account
[**show_b_pay_account_user**](BPayAccountsApi.md#show_b_pay_account_user) | **GET** /bpay_accounts/{id}/users | Show BPay Account User



## create_b_pay_account

> BpayAccount create_b_pay_account(bpay_account_request_body)

Create BPay Account

Create a **BPay Account** to be used as a Disbursement destination. 

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

api_instance = AssemblyRuby::BPayAccountsApi.new
bpay_account_request_body = AssemblyRuby::BpayAccountRequestBody.new # BpayAccountRequestBody | 

begin
  #Create BPay Account
  result = api_instance.create_b_pay_account(bpay_account_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BPayAccountsApi->create_b_pay_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bpay_account_request_body** | [**BpayAccountRequestBody**](BpayAccountRequestBody.md)|  | 

### Return type

[**BpayAccount**](BpayAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redact_b_pay_account

> BpayAccountDeletion redact_b_pay_account(id)

Redact BPay Account (Future Feature)

Redact a **BPay Account** using a given `:id`. Redacted **BPay Accounts** can no longer be used as a Disbursement destination. 

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

api_instance = AssemblyRuby::BPayAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | BPay account ID

begin
  #Redact BPay Account (Future Feature)
  result = api_instance.redact_b_pay_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BPayAccountsApi->redact_b_pay_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| BPay account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**BpayAccountDeletion**](BpayAccountDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_b_pay_account

> BpayAccount show_b_pay_account(id)

Show BPay Account

Show details of a specific **BPay Account** using a given `:id`.

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

api_instance = AssemblyRuby::BPayAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | BPay account ID

begin
  #Show BPay Account
  result = api_instance.show_b_pay_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BPayAccountsApi->show_b_pay_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| BPay account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**BpayAccount**](BpayAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_b_pay_account_user

> SingleUser show_b_pay_account_user(id)

Show BPay Account User

Show the **User** the **BPay Account** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::BPayAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | BPay account ID

begin
  #Show BPay Account User
  result = api_instance.show_b_pay_account_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BPayAccountsApi->show_b_pay_account_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| BPay account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

