# AssemblyRuby::ItemsApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item**](ItemsApi.md#create_item) | **POST** /items | Create Item
[**delete_item**](ItemsApi.md#delete_item) | **DELETE** /items/{id} | Delete Item
[**list_item_batch_transactions**](ItemsApi.md#list_item_batch_transactions) | **GET** /items/{id}/batch_transactions | List Item Batch Transactions
[**list_item_transactions**](ItemsApi.md#list_item_transactions) | **GET** /items/{id}/transactions | List Item Transactions
[**list_items**](ItemsApi.md#list_items) | **GET** /items | List Items
[**show_item**](ItemsApi.md#show_item) | **GET** /items/{id} | Show Item
[**show_item_buyer**](ItemsApi.md#show_item_buyer) | **GET** /items/{id}/buyers | Show Item Buyer
[**show_item_fees**](ItemsApi.md#show_item_fees) | **GET** /items/{id}/fees | Show Item Fees
[**show_item_seller**](ItemsApi.md#show_item_seller) | **GET** /items/{id}/sellers | Show Item Seller
[**show_item_status**](ItemsApi.md#show_item_status) | **GET** /items/{id}/status | Show Item Status
[**show_item_wire_details**](ItemsApi.md#show_item_wire_details) | **GET** /items/{id}/wire_details | Show Item Wire Details
[**update_item**](ItemsApi.md#update_item) | **PATCH** /items/{id} | Update Item



## create_item

> SingleItem create_item(item_request_body)

Create Item

Create an **Item**. Items require two **Users**, a buyer and a seller. The `buyer_id` and `seller_id` are your unique user identifiers. 

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

api_instance = AssemblyRuby::ItemsApi.new
item_request_body = AssemblyRuby::ItemRequestBody.new # ItemRequestBody | 

begin
  #Create Item
  result = api_instance.create_item(item_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->create_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_request_body** | [**ItemRequestBody**](ItemRequestBody.md)|  | 

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_item

> SingleItem delete_item(id)

Delete Item

Delete an existing **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID

begin
  #Delete Item
  result = api_instance.delete_item(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->delete_item: #{e}"
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


## list_item_batch_transactions

> ListBatchTransactions list_item_batch_transactions(id)

List Item Batch Transactions

Retrieve an ordered and paginated list of **Batch Transactions** associated with the `Item` using a given `:id`. This will include both direct debits coming in, and the disbursements going out.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7139651-1-2046' # String | Marketplace / Platform item ID

begin
  #List Item Batch Transactions
  result = api_instance.list_item_batch_transactions(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->list_item_batch_transactions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7139651-1-2046&#39;]

### Return type

[**ListBatchTransactions**](ListBatchTransactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_item_transactions

> Transactions list_item_transactions(id)

List Item Transactions

Retrieve an ordered and paginated list of **Transactions** associated with the **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190985-1-9382' # String | Marketplace / Platform item ID

begin
  #List Item Transactions
  result = api_instance.list_item_transactions(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->list_item_transactions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190985-1-9382&#39;]

### Return type

[**Transactions**](Transactions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_items

> Items list_items(search, opts)

List Items

OK

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

api_instance = AssemblyRuby::ItemsApi.new
search = 'search_example' # String | A text value to be used for searching within the item description
opts = {
  offset: 0, # Integer | Number of records to offset. Required for pagination.
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  created_before: 'created_before_example', # String | Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
  created_after: 'created_after_example' # String | Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
}

begin
  #List Items
  result = api_instance.list_items(search, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->list_items: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| A text value to be used for searching within the item description | 
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **created_before** | **String**| Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z) | [optional] 
 **created_after** | **String**| Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z) | [optional] 

### Return type

[**Items**](Items.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_item

> SingleItem show_item(id)

Show Item

Show details of a specific **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190770-1-2908' # String | Marketplace / Platform item ID

begin
  #Show Item
  result = api_instance.show_item(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item: #{e}"
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


## show_item_buyer

> SingleUser show_item_buyer(id)

Show Item Buyer

Show the buyer **User** associated with the **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190973-1-3780' # String | Marketplace / Platform item ID

begin
  #Show Item Buyer
  result = api_instance.show_item_buyer(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item_buyer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190973-1-3780&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_item_fees

> Fees show_item_fees(id)

Show Item Fees

Show the **Fees** associated with the **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190973-1-3780' # String | Marketplace / Platform item ID

begin
  #Show Item Fees
  result = api_instance.show_item_fees(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item_fees: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190973-1-3780&#39;]

### Return type

[**Fees**](Fees.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_item_seller

> SingleUser show_item_seller(id)

Show Item Seller

Show the seller **User** associated with the **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190973-1-3780' # String | Marketplace / Platform item ID

begin
  #Show Item Seller
  result = api_instance.show_item_seller(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item_seller: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190973-1-3780&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_item_status

> SingleStatus show_item_status(id)

Show Item Status

Show the status of an **Item** using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7139651-1-2046' # String | Marketplace / Platform item ID

begin
  #Show Item Status
  result = api_instance.show_item_status(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7139651-1-2046&#39;]

### Return type

[**SingleStatus**](SingleStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_item_wire_details

> SingleWireDetailsWithId show_item_wire_details(id)

Show Item Wire Details

Show the **Item** wire payment details using a given `:id`.

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190985-1-9382' # String | Marketplace / Platform item ID

begin
  #Show Item Wire Details
  result = api_instance.show_item_wire_details(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->show_item_wire_details: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Marketplace / Platform item ID | [default to &#39;7190985-1-9382&#39;]

### Return type

[**SingleWireDetailsWithId**](SingleWireDetailsWithId.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_item

> SingleItem update_item(id, update_item_request_body)

Update Item

Update an existing **Items** attributes using a given `:id`. Note: An item can only be updated if it’s in `pending` state. Once an item has begun a payment process, you cannot update it. 

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

api_instance = AssemblyRuby::ItemsApi.new
id = '7190770-1-2908' # String | Item ID
update_item_request_body = AssemblyRuby::UpdateItemRequestBody.new # UpdateItemRequestBody | 

begin
  #Update Item
  result = api_instance.update_item(id, update_item_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling ItemsApi->update_item: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Item ID | [default to &#39;7190770-1-2908&#39;]
 **update_item_request_body** | [**UpdateItemRequestBody**](UpdateItemRequestBody.md)|  | 

### Return type

[**SingleItem**](SingleItem.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

