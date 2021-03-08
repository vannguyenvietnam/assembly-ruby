# AssemblyRuby::BatchTransactionsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_batch_transactions**](BatchTransactionsApi.md#list_batch_transactions) | **GET** /batch_transactions | List Batch Transactions |
| [**show_batch_transaction**](BatchTransactionsApi.md#show_batch_transaction) | **GET** /batch_transactions/{id} | Show Batch Transaction |
| [**show_batch_transaction_items**](BatchTransactionsApi.md#show_batch_transaction_items) | **GET** /batch_transactions/{id}/items | Show Batch Transactions Items |


## list_batch_transactions

> <ListBatchTransactions> list_batch_transactions(opts)

List Batch Transactions

Retrieve an ordered and paginated list of existing **Batch Transactions**. The list can be filtered by **Account**, **Batch ID**, **Item**, and **Transaction Type**. 

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

api_instance = AssemblyRuby::BatchTransactionsApi.new
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56, # Integer | Number of records to offset. Required for pagination.
  account_id: 'account_id_example', # String | Bank, Card or Wallet Account ID.
  batch_id: 'batch_id_example', # String | Batch ID. This appears on a bank reference.
  item_id: 'item_id_example', # String | Item ID
  transaction_type: 'payment', # String | The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  transaction_type_method: 'direct_debit', # String | The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  direction: 'debit', # String | Direction of the transaction. Options are debit, credit
  created_before: 'created_before_example', # String | Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
  created_after: 'created_after_example', # String | Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
  disbursement_bank: 'any' # String | The bank used for disbursing the payment. Please use a default value of `any`
}

begin
  # List Batch Transactions
  result = api_instance.list_batch_transactions(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->list_batch_transactions: #{e}"
end
```

#### Using the list_batch_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBatchTransactions>, Integer, Hash)> list_batch_transactions_with_http_info(opts)

```ruby
begin
  # List Batch Transactions
  data, status_code, headers = api_instance.list_batch_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBatchTransactions>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->list_batch_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |
| **account_id** | **String** | Bank, Card or Wallet Account ID. | [optional] |
| **batch_id** | **String** | Batch ID. This appears on a bank reference. | [optional] |
| **item_id** | **String** | Item ID | [optional] |
| **transaction_type** | **String** | The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list | [optional] |
| **transaction_type_method** | **String** | The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list | [optional] |
| **direction** | **String** | Direction of the transaction. Options are debit, credit | [optional] |
| **created_before** | **String** | Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z) | [optional] |
| **created_after** | **String** | Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z) | [optional] |
| **disbursement_bank** | **String** | The bank used for disbursing the payment. Please use a default value of &#x60;any&#x60; | [optional] |

### Return type

[**ListBatchTransactions**](ListBatchTransactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_batch_transaction

> <SingleBatchTransaction> show_batch_transaction(id)

Show Batch Transaction

Get a batch transaction using its ID

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

api_instance = AssemblyRuby::BatchTransactionsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Transaction ID

begin
  # Show Batch Transaction
  result = api_instance.show_batch_transaction(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->show_batch_transaction: #{e}"
end
```

#### Using the show_batch_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleBatchTransaction>, Integer, Hash)> show_batch_transaction_with_http_info(id)

```ruby
begin
  # Show Batch Transaction
  data, status_code, headers = api_instance.show_batch_transaction_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleBatchTransaction>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->show_batch_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Transaction ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**SingleBatchTransaction**](SingleBatchTransaction.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_batch_transaction_items

> <Items> show_batch_transaction_items(id)

Show Batch Transactions Items

Get all the items relating to a batch transactions ID

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

api_instance = AssemblyRuby::BatchTransactionsApi.new
id = '90c1418b-f4f4-413e-a4ba-f29c334e7f55' # String | Batch Transactions ID

begin
  # Show Batch Transactions Items
  result = api_instance.show_batch_transaction_items(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->show_batch_transaction_items: #{e}"
end
```

#### Using the show_batch_transaction_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Items>, Integer, Hash)> show_batch_transaction_items_with_http_info(id)

```ruby
begin
  # Show Batch Transactions Items
  data, status_code, headers = api_instance.show_batch_transaction_items_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Items>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BatchTransactionsApi->show_batch_transaction_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Batch Transactions ID | [default to &#39;90c1418b-f4f4-413e-a4ba-f29c334e7f55&#39;] |

### Return type

[**Items**](Items.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

