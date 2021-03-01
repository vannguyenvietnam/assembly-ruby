# AssemblyRuby::TransactionsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_transactions**](TransactionsApi.md#list_transactions) | **GET** /transactions | List Transactions
[**show_transaction**](TransactionsApi.md#show_transaction) | **GET** /transactions/{id} | Show Transaction
[**show_transaction_bank_account**](TransactionsApi.md#show_transaction_bank_account) | **GET** /transactions/{id}/bank_accounts | Show Transaction Bank Account
[**show_transaction_card_account**](TransactionsApi.md#show_transaction_card_account) | **GET** /transactions/{id}/card_accounts | Show Transaction Card Account
[**show_transaction_fees**](TransactionsApi.md#show_transaction_fees) | **GET** /transactions/{id}/fees | Show Transaction Fees
[**show_transaction_user**](TransactionsApi.md#show_transaction_user) | **GET** /transactions/{id}/users | Show Transaction User
[**show_transaction_wallet_account**](TransactionsApi.md#show_transaction_wallet_account) | **GET** /transactions/{id}/wallet_accounts | Show Transaction Wallet Account



## list_transactions

> Transactions list_transactions(opts)

List Transactions

Retrieve an ordered and paginated list of **Transactions**.

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

api_instance = AssemblyRuby::TransactionsApi.new
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0, # Integer | Number of records to offset. Required for pagination.
  account_id: 'account_id_example', # String | Bank, Card or Wallet Account ID.
  item_id: 'item_id_example', # String | Item ID
  transaction_type: 'transaction_type_example', # String | The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  transaction_type_method: 'transaction_type_method_example', # String | The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  direction: 'direction_example', # String | Direction of the transaction.
  user_id: 'user_id_example' # String | User ID.
}

begin
  #List Transactions
  result = api_instance.list_transactions(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->list_transactions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]
 **account_id** | **String**| Bank, Card or Wallet Account ID. | [optional] 
 **item_id** | **String**| Item ID | [optional] 
 **transaction_type** | **String**| The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list | [optional] 
 **transaction_type_method** | **String**| The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list | [optional] 
 **direction** | **String**| Direction of the transaction. | [optional] 
 **user_id** | **String**| User ID. | [optional] 

### Return type

[**Transactions**](Transactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction

> SingleTransaction show_transaction(id)

Show Transaction

Show details of a specific **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = '27b91b10-70eb-0138-ec44-0a58a9feac06' # String | Transaction ID

begin
  #Show Transaction
  result = api_instance.show_transaction(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;27b91b10-70eb-0138-ec44-0a58a9feac06&#39;]

### Return type

[**SingleTransaction**](SingleTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction_bank_account

> BankAccount show_transaction_bank_account(id)

Show Transaction Bank Account

Show the **Bank Account** associated with the **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = 'aed53110-6f63-0138-ea83-0a58a9feac04' # String | Transaction ID

begin
  #Show Transaction Bank Account
  result = api_instance.show_transaction_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction_bank_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;aed53110-6f63-0138-ea83-0a58a9feac04&#39;]

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction_card_account

> CardAccount show_transaction_card_account(id)

Show Transaction Card Account

Show the **Card Account** associated with the **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = 'ea36e48a-4638-4d1a-a345-e1a0a584df8b' # String | Transaction ID

begin
  #Show Transaction Card Account
  result = api_instance.show_transaction_card_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction_card_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;ea36e48a-4638-4d1a-a345-e1a0a584df8b&#39;]

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction_fees

> Fees show_transaction_fees(id)

Show Transaction Fees

Show the **Fees** associated with the **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = 'ea36e48a-4638-4d1a-a345-e1a0a584df8b' # String | Transaction ID

begin
  #Show Transaction Fees
  result = api_instance.show_transaction_fees(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction_fees: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;ea36e48a-4638-4d1a-a345-e1a0a584df8b&#39;]

### Return type

[**Fees**](Fees.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction_user

> SingleUser show_transaction_user(id)

Show Transaction User

Show the **User** associated with the **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Transaction ID

begin
  #Show Transaction User
  result = api_instance.show_transaction_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_transaction_wallet_account

> WalletAccount show_transaction_wallet_account(id)

Show Transaction Wallet Account

Show the **Wallet Account** associated with the **Transaction** using a given `:id`.

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

api_instance = AssemblyRuby::TransactionsApi.new
id = 'ea36e48a-4638-4d1a-a345-e1a0a584df8b' # String | Transaction ID

begin
  #Show Transaction Wallet Account
  result = api_instance.show_transaction_wallet_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling TransactionsApi->show_transaction_wallet_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | [default to &#39;ea36e48a-4638-4d1a-a345-e1a0a584df8b&#39;]

### Return type

[**WalletAccount**](WalletAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

