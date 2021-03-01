# AssemblyRuby::UsersApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /users | Create User
[**list_user_b_pay_accounts**](UsersApi.md#list_user_b_pay_accounts) | **GET** /users/{id}/bpay_accounts | List User&#39;s BPay Accounts
[**list_user_items**](UsersApi.md#list_user_items) | **GET** /users/{id}/items | List User Items
[**list_users**](UsersApi.md#list_users) | **GET** /users | List Users
[**set_user_disbursement_account**](UsersApi.md#set_user_disbursement_account) | **PATCH** /users/{id}/disbursement_account | Set User Disbursement Account
[**show_user**](UsersApi.md#show_user) | **GET** /users/{id} | Show User
[**show_user_bank_account**](UsersApi.md#show_user_bank_account) | **GET** /users/{id}/bank_accounts | Show User Bank Account
[**show_user_card_account**](UsersApi.md#show_user_card_account) | **GET** /users/{id}/card_accounts | Show User Card Account
[**show_user_wallet_accounts**](UsersApi.md#show_user_wallet_accounts) | **GET** /users/{id}/wallet_accounts | Show User Wallet Account
[**update_user**](UsersApi.md#update_user) | **PATCH** /users/{id} | Update User
[**verify_user**](UsersApi.md#verify_user) | **PATCH** /users/{id}/identity_verified | Verify User (Prelive Only)



## create_user

> SingleUser create_user(user_request_body)

Create User

Create a **User**. **Users** can be associated with **Items** either as a buyer or a seller. **Users** can’t be both the buyer and seller for the same **Item**. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 

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

api_instance = AssemblyRuby::UsersApi.new
user_request_body = AssemblyRuby::UserRequestBody.new # UserRequestBody | 

begin
  #Create User
  result = api_instance.create_user(user_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_request_body** | [**UserRequestBody**](UserRequestBody.md)|  | 

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_b_pay_accounts

> ListBpayAccounts list_user_b_pay_accounts(id)

List User's BPay Accounts

List the **BPay Accounts** the **User** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | User ID

begin
  #List User's BPay Accounts
  result = api_instance.list_user_b_pay_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->list_user_b_pay_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;]

### Return type

[**ListBpayAccounts**](ListBpayAccounts.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_items

> Items list_user_items(id, opts)

List User Items

Retrieve an ordered and paginated list of existing **Items** the **User** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'test-user-1592459047-22' # String | User ID
opts = {
  offset: 0, # Integer | Number of records to offset. Required for pagination.
  limit: 10 # Integer | Number of records to retrieve. Up to 200.
}

begin
  #List User Items
  result = api_instance.list_user_items(id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->list_user_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;test-user-1592459047-22&#39;]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]

### Return type

[**Items**](Items.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> Users list_users(search, opts)

List Users

Retrieve an ordered and paginated list of existing **Users**.

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

api_instance = AssemblyRuby::UsersApi.new
search = 'search_example' # String | A text value to be used for searching users
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #List Users
  result = api_instance.list_users(search, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| A text value to be used for searching users | 
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**Users**](Users.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_user_disbursement_account

> SingleUser set_user_disbursement_account(id, bank_account_id_request_body)

Set User Disbursement Account

Set the **User’s Disbursement Account** using a given **User** `:id` and a **Bank Account** `:account_id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'Seller_1234' # String | User ID
bank_account_id_request_body = AssemblyRuby::BankAccountIdRequestBody.new # BankAccountIdRequestBody | 

begin
  #Set User Disbursement Account
  result = api_instance.set_user_disbursement_account(id, bank_account_id_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->set_user_disbursement_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;Seller_1234&#39;]
 **bank_account_id_request_body** | [**BankAccountIdRequestBody**](BankAccountIdRequestBody.md)|  | 

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_user

> SingleUser show_user(id)

Show User

Show details of a specific User using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'buyer-1556506027' # String | User ID

begin
  #Show User
  result = api_instance.show_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->show_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;buyer-1556506027&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_user_bank_account

> BankAccount show_user_bank_account(id)

Show User Bank Account

Shows the user’s active bank account using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = '46deb476-c1a6-41eb-8eb7-26a695bbe5bc' # String | User ID

begin
  #Show User Bank Account
  result = api_instance.show_user_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->show_user_bank_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;46deb476-c1a6-41eb-8eb7-26a695bbe5bc&#39;]

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_user_card_account

> CardAccount show_user_card_account(id)

Show User Card Account

Show the user’s active card account using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'buyer-71439598' # String | User ID

begin
  #Show User Card Account
  result = api_instance.show_user_card_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->show_user_card_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;buyer-71439598&#39;]

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_user_wallet_accounts

> WalletAccount show_user_wallet_accounts(id)

Show User Wallet Account

Show the **User’s Wallet Account** using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'aed45af0-6f63-0138-901c-0a58a9feac03' # String | User ID

begin
  #Show User Wallet Account
  result = api_instance.show_user_wallet_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->show_user_wallet_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;aed45af0-6f63-0138-901c-0a58a9feac03&#39;]

### Return type

[**WalletAccount**](WalletAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> SingleUser update_user(id, update_user_request_body)

Update User

Update an existing **User’s** attributes using a given `:id`.

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

api_instance = AssemblyRuby::UsersApi.new
id = 'buyer-1556506027' # String | Unique ID that can be generated by the platform. Cannot contain ’.’ character.
update_user_request_body = AssemblyRuby::UpdateUserRequestBody.new # UpdateUserRequestBody | 

begin
  #Update User
  result = api_instance.update_user(id, update_user_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID that can be generated by the platform. Cannot contain ’.’ character. | [default to &#39;buyer-1556506027&#39;]
 **update_user_request_body** | [**UpdateUserRequestBody**](UpdateUserRequestBody.md)|  | 

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_user

> SingleUser verify_user(id)

Verify User (Prelive Only)

Sets a user’s verification state to `approved` on pre-live given the **User** `:id`. Ensure that a **User** has the required user verification information before using this call, otherwise the call will fail. **Note**: This API call will only work in our pre-live environment. The user verification workflow holds for all users in production. 

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

api_instance = AssemblyRuby::UsersApi.new
id = 'buyer-1556506027' # String | User ID

begin
  #Verify User (Prelive Only)
  result = api_instance.verify_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling UsersApi->verify_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | [default to &#39;buyer-1556506027&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

