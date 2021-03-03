# AssemblyRuby::DisbursementsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_disbursement**](DisbursementsApi.md#list_disbursement) | **GET** /disbursements | List Disbursements |
| [**show_disbursement**](DisbursementsApi.md#show_disbursement) | **GET** /disbursements/{id} | Show Disbursement |
| [**show_disbursement_bank_accounts**](DisbursementsApi.md#show_disbursement_bank_accounts) | **GET** /disbursements/{id}/bank_accounts | Show Disbursement Bank Accounts |
| [**show_disbursement_items**](DisbursementsApi.md#show_disbursement_items) | **GET** /disbursements/{id}/items | Show Disbursement Items |
| [**show_disbursement_transactions**](DisbursementsApi.md#show_disbursement_transactions) | **GET** /disbursements/{id}/transactions | Show Disbursement Transactions |
| [**show_disbursement_users**](DisbursementsApi.md#show_disbursement_users) | **GET** /disbursements/{id}/users | Show Disbursement Users |
| [**show_disbursement_wallet_accounts**](DisbursementsApi.md#show_disbursement_wallet_accounts) | **GET** /disbursements/{id}/wallet_accounts | Show Disbursement Wallet Accounts |


## list_disbursement

> <Disbursements> list_disbursement(opts)

List Disbursements

Retrieve an ordered and paginated list of existing **Disbursements**. The list can be filtered by **Batch ID**. 

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

api_instance = AssemblyRuby::DisbursementsApi.new
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56, # Integer | Number of records to offset. Required for pagination.
  batch_id: 'batch_id_example' # String | Batch ID.
}

begin
  # List Disbursements
  result = api_instance.list_disbursement(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->list_disbursement: #{e}"
end
```

#### Using the list_disbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Disbursements>, Integer, Hash)> list_disbursement_with_http_info(opts)

```ruby
begin
  # List Disbursements
  data, status_code, headers = api_instance.list_disbursement_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Disbursements>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->list_disbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |
| **batch_id** | **String** | Batch ID. | [optional] |

### Return type

[**Disbursements**](Disbursements.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement

> <SingleDisbursement> show_disbursement(id)

Show Disbursement

Get a disbursment using its ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  # Show Disbursement
  result = api_instance.show_disbursement(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement: #{e}"
end
```

#### Using the show_disbursement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDisbursement>, Integer, Hash)> show_disbursement_with_http_info(id)

```ruby
begin
  # Show Disbursement
  data, status_code, headers = api_instance.show_disbursement_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDisbursement>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**SingleDisbursement**](SingleDisbursement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_bank_accounts

> <BankAccount> show_disbursement_bank_accounts(id)

Show Disbursement Bank Accounts

Get all the bank accounts relating to disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  # Show Disbursement Bank Accounts
  result = api_instance.show_disbursement_bank_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_bank_accounts: #{e}"
end
```

#### Using the show_disbursement_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccount>, Integer, Hash)> show_disbursement_bank_accounts_with_http_info(id)

```ruby
begin
  # Show Disbursement Bank Accounts
  data, status_code, headers = api_instance.show_disbursement_bank_accounts_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_items

> <Items> show_disbursement_items(id)

Show Disbursement Items

Get all the items relating to a disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  # Show Disbursement Items
  result = api_instance.show_disbursement_items(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_items: #{e}"
end
```

#### Using the show_disbursement_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Items>, Integer, Hash)> show_disbursement_items_with_http_info(id)

```ruby
begin
  # Show Disbursement Items
  data, status_code, headers = api_instance.show_disbursement_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Items>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**Items**](Items.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_transactions

> <Transactions> show_disbursement_transactions(id, opts)

Show Disbursement Transactions

Get all the transactions relating to a disbursment ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56 # Integer | Number of records to offset. Required for pagination.
}

begin
  # Show Disbursement Transactions
  result = api_instance.show_disbursement_transactions(id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_transactions: #{e}"
end
```

#### Using the show_disbursement_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transactions>, Integer, Hash)> show_disbursement_transactions_with_http_info(id, opts)

```ruby
begin
  # Show Disbursement Transactions
  data, status_code, headers = api_instance.show_disbursement_transactions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transactions>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |

### Return type

[**Transactions**](Transactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_users

> <SingleUser> show_disbursement_users(id)

Show Disbursement Users

Get all the users relating to disbursement ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  # Show Disbursement Users
  result = api_instance.show_disbursement_users(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_users: #{e}"
end
```

#### Using the show_disbursement_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUser>, Integer, Hash)> show_disbursement_users_with_http_info(id)

```ruby
begin
  # Show Disbursement Users
  data, status_code, headers = api_instance.show_disbursement_users_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUser>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_disbursement_wallet_accounts

> <WalletAccount> show_disbursement_wallet_accounts(id)

Show Disbursement Wallet Accounts

Get all the wallet accounts relating to a disbursment ID

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

api_instance = AssemblyRuby::DisbursementsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Disbursement ID

begin
  # Show Disbursement Wallet Accounts
  result = api_instance.show_disbursement_wallet_accounts(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_wallet_accounts: #{e}"
end
```

#### Using the show_disbursement_wallet_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletAccount>, Integer, Hash)> show_disbursement_wallet_accounts_with_http_info(id)

```ruby
begin
  # Show Disbursement Wallet Accounts
  data, status_code, headers = api_instance.show_disbursement_wallet_accounts_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DisbursementsApi->show_disbursement_wallet_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Disbursement ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**WalletAccount**](WalletAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

