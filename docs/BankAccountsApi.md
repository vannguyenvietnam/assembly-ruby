# AssemblyRuby::BankAccountsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bank_account**](BankAccountsApi.md#create_bank_account) | **POST** /bank_accounts | Create Bank Account
[**redact_bank_account**](BankAccountsApi.md#redact_bank_account) | **DELETE** /bank_accounts/{id} | Redact Bank Account
[**send_penny_amount**](BankAccountsApi.md#send_penny_amount) | **PATCH** /bank_accounts/{id}/penny_send | Send Penny Amount
[**show_bank_account**](BankAccountsApi.md#show_bank_account) | **GET** /bank_accounts/{id} | Show Bank Account
[**show_bank_account_user**](BankAccountsApi.md#show_bank_account_user) | **GET** /bank_accounts/{id}/users | Show Bank Account User
[**validate_routing_number**](BankAccountsApi.md#validate_routing_number) | **GET** /tools/routing_number | Validate Routing Number
[**verify_penny_amount**](BankAccountsApi.md#verify_penny_amount) | **PATCH** /bank_accounts/{id}/penny_verify | Verify Penny Amount



## create_bank_account

> BankAccount create_bank_account(bank_account_request_body)

Create Bank Account

Create a **Bank Account** to be used as either a funding source or a Disbursement destination. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a `token` when involving **Bank Accounts**. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
bank_account_request_body = AssemblyRuby::BankAccountRequestBody.new # BankAccountRequestBody | 

begin
  #Create Bank Account
  result = api_instance.create_bank_account(bank_account_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->create_bank_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bank_account_request_body** | [**BankAccountRequestBody**](BankAccountRequestBody.md)|  | 

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redact_bank_account

> BankAccountDeletion redact_bank_account(id)

Redact Bank Account

Redact a **Bank Account** using a given `:id`. Redacted **Bank Accounts** can no longer be used as a funding source or a Disbursement destination. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  #Redact Bank Account
  result = api_instance.redact_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->redact_bank_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**BankAccountDeletion**](BankAccountDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_penny_amount

> BankAccount send_penny_amount(id)

Send Penny Amount

When penny verification is enabled, this API call sends two penny transactions to the specified bank account for verification. **Note**: This API call is not required when your platform has automatic penny verification enabled, as this is instead done by the system. Penny credit verification is only supported for US platforms. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  #Send Penny Amount
  result = api_instance.send_penny_amount(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->send_penny_amount: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_bank_account

> BankAccount show_bank_account(id)

Show Bank Account

Show details of a specific **Bank Account** using a given `:id`.

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  #Show Bank Account
  result = api_instance.show_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->show_bank_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_bank_account_user

> SingleUser show_bank_account_user(id)

Show Bank Account User

Show the **User** the **Bank Account** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Bank account ID

begin
  #Show Bank Account User
  result = api_instance.show_bank_account_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->show_bank_account_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Bank account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_routing_number

> SingleRoutingNumber validate_routing_number(routing_number)

Validate Routing Number

Validate a US bank routing number before creating an account. This can be used to provide on-demand verification, and further information of the bank information a User is providing.

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

api_instance = AssemblyRuby::BankAccountsApi.new
routing_number = '122235821' # String | Bank account routing number

begin
  #Validate Routing Number
  result = api_instance.validate_routing_number(routing_number)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->validate_routing_number: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routing_number** | **String**| Bank account routing number | [default to &#39;122235821&#39;]

### Return type

[**SingleRoutingNumber**](SingleRoutingNumber.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_penny_amount

> BankAccount verify_penny_amount(id, penny_verify_request_body)

Verify Penny Amount

When penny verification is enabled, this API call verifies the two penny transactions that were sent to a specified bank account using **Send Penny Amount**. **Note**: This API call requires you to provide a front-end interface to your end-users into which they can input the penny amounts required for a successful verification. Your front-end interface should then pass the information into this API call. Penny credit verification is only supported for US platforms. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID
penny_verify_request_body = AssemblyRuby::PennyVerifyRequestBody.new # PennyVerifyRequestBody | 

begin
  #Verify Penny Amount
  result = api_instance.verify_penny_amount(id, penny_verify_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling BankAccountsApi->verify_penny_amount: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]
 **penny_verify_request_body** | [**PennyVerifyRequestBody**](PennyVerifyRequestBody.md)|  | 

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

