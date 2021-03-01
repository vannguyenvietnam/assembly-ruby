# AssemblyRuby::DisbursementsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_disbursement**](DisbursementsApi.md#list_disbursement) | **GET** /disbursements | List Disbursements
[**show_disbursement**](DisbursementsApi.md#show_disbursement) | **GET** /disbursements/{id} | Show Disbursement
[**show_disbursement_bank_accounts**](DisbursementsApi.md#show_disbursement_bank_accounts) | **GET** /disbursements/{id}/bank_accounts | Show Disbursement Bank Accounts
[**show_disbursement_items**](DisbursementsApi.md#show_disbursement_items) | **GET** /disbursements/{id}/items | Show Disbursement Items
[**show_disbursement_transactions**](DisbursementsApi.md#show_disbursement_transactions) | **GET** /disbursements/{id}/transactions | Show Disbursement Transactions
[**show_disbursement_users**](DisbursementsApi.md#show_disbursement_users) | **GET** /disbursements/{id}/users | Show Disbursement Users
[**show_disbursement_wallet_accounts**](DisbursementsApi.md#show_disbursement_wallet_accounts) | **GET** /disbursements/{id}/wallet_accounts | Show Disbursement Wallet Accounts



## list_disbursement

> Disbursements list_disbursement(opts)

List Disbursements

Retrieve an ordered and paginated list of existing **Disbursements**. The list can be filtered by **Batch ID**. 

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

api_instance = AssemblyRuby::DisbursementsApi.new
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0, # Integer | Number of records to offset. Required for pagination.
  batch_id: 'batch_id_example' # String | Batch ID.
}

begin
  #List Disbursements
  result = api_instance.list_disbursement(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->list_disbursement: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]
 **batch_id** | **String**| Batch ID. | [optional] 

### Return type

[**Disbursements**](Disbursements.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement

> SingleDisbursement show_disbursement(id)

Show Disbursement

Get a disbursment using its ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  #Show Disbursement
  result = api_instance.show_disbursement(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]

### Return type

[**SingleDisbursement**](SingleDisbursement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_bank_accounts

> BankAccount show_disbursement_bank_accounts(id)

Show Disbursement Bank Accounts

Get all the bank accounts relating to disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  #Show Disbursement Bank Accounts
  result = api_instance.show_disbursement_bank_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement_bank_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_items

> Items show_disbursement_items(id)

Show Disbursement Items

Get all the items relating to a disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  #Show Disbursement Items
  result = api_instance.show_disbursement_items(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]

### Return type

[**Items**](Items.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_transactions

> Transactions show_disbursement_transactions(id, opts)

Show Disbursement Transactions

Get all the transactions relating to a disbursment ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #Show Disbursement Transactions
  result = api_instance.show_disbursement_transactions(id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement_transactions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**Transactions**](Transactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_users

> SingleUser show_disbursement_users(id)

Show Disbursement Users

Get all the users relating to disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  #Show Disbursement Users
  result = api_instance.show_disbursement_users(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_wallet_accounts

> WalletAccount show_disbursement_wallet_accounts(id)

Show Disbursement Wallet Accounts

Get all the wallet accounts relating to a disbursment ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  #Show Disbursement Wallet Accounts
  result = api_instance.show_disbursement_wallet_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DisbursementsApi->show_disbursement_wallet_accounts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;]

### Return type

[**WalletAccount**](WalletAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

