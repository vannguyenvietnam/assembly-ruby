# AssemblyRuby::CallbacksApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_callback**](CallbacksApi.md#create_callback) | **POST** /callbacks | Create Callback |
| [**delete_callback**](CallbacksApi.md#delete_callback) | **DELETE** /callbacks/{id} | Delete Callback |
| [**list_callback_response**](CallbacksApi.md#list_callback_response) | **GET** /callbacks/{id}/responses | List Callback Responses |
| [**list_callbacks**](CallbacksApi.md#list_callbacks) | **GET** /callbacks | List Callbacks |
| [**show_callback**](CallbacksApi.md#show_callback) | **GET** /callbacks/{id} | Show Callback |
| [**show_callback_response**](CallbacksApi.md#show_callback_response) | **GET** /callbacks/{callback_id}/responses/{id} | Show Callback Response |
| [**update_callback**](CallbacksApi.md#update_callback) | **PATCH** /callbacks/{id} | Update Callback |


## create_callback

> <SingleCallback> create_callback(callback_request_body)

Create Callback

Create a **Callback** to notify you at the `URL` when the `object_type` changes

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

api_instance = AssemblyRuby::CallbacksApi.new
callback_request_body = AssemblyRuby::CallbackRequestBody.new({description: 'Users Callback', url: 'https://httpbin.org', object_type: 'users', enabled: 'true'}) # CallbackRequestBody | 

begin
  # Create Callback
  result = api_instance.create_callback(callback_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->create_callback: #{e}"
end
```

#### Using the create_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCallback>, Integer, Hash)> create_callback_with_http_info(callback_request_body)

```ruby
begin
  # Create Callback
  data, status_code, headers = api_instance.create_callback_with_http_info(callback_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCallback>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->create_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_request_body** | [**CallbackRequestBody**](CallbackRequestBody.md) |  |  |

### Return type

[**SingleCallback**](SingleCallback.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_callback

> <CallbackDeletion> delete_callback(id)

Delete Callback

Delete an existing Callback using a given `:id`.

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

api_instance = AssemblyRuby::CallbacksApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Callback ID

begin
  # Delete Callback
  result = api_instance.delete_callback(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->delete_callback: #{e}"
end
```

#### Using the delete_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallbackDeletion>, Integer, Hash)> delete_callback_with_http_info(id)

```ruby
begin
  # Delete Callback
  data, status_code, headers = api_instance.delete_callback_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallbackDeletion>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->delete_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Callback ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**CallbackDeletion**](CallbackDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_callback_response

> <ListCallbackResponses> list_callback_response(id, opts)

List Callback Responses

Retrieve an ordered and paginated list of the responses garnered from a callback using a given `:id`.

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

api_instance = AssemblyRuby::CallbacksApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Callback ID
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56 # Integer | Number of records to offset. Required for pagination.
}

begin
  # List Callback Responses
  result = api_instance.list_callback_response(id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->list_callback_response: #{e}"
end
```

#### Using the list_callback_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCallbackResponses>, Integer, Hash)> list_callback_response_with_http_info(id, opts)

```ruby
begin
  # List Callback Responses
  data, status_code, headers = api_instance.list_callback_response_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCallbackResponses>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->list_callback_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Callback ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |

### Return type

[**ListCallbackResponses**](ListCallbackResponses.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_callbacks

> <Callbacks> list_callbacks(opts)

List Callbacks

Retrieve an ordered and paginated list of all created **Callbacks**.

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

api_instance = AssemblyRuby::CallbacksApi.new
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56, # Integer | Number of records to offset. Required for pagination.
  filter: 'filter_example' # String | Narrow down records to relevant character string
}

begin
  # List Callbacks
  result = api_instance.list_callbacks(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->list_callbacks: #{e}"
end
```

#### Using the list_callbacks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Callbacks>, Integer, Hash)> list_callbacks_with_http_info(opts)

```ruby
begin
  # List Callbacks
  data, status_code, headers = api_instance.list_callbacks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Callbacks>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->list_callbacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |
| **filter** | **String** | Narrow down records to relevant character string | [optional] |

### Return type

[**Callbacks**](Callbacks.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_callback

> <SingleCallback> show_callback(id)

Show Callback

Show details of a specific **Callback** using a given `:id`.

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

api_instance = AssemblyRuby::CallbacksApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Callback ID

begin
  # Show Callback
  result = api_instance.show_callback(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->show_callback: #{e}"
end
```

#### Using the show_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCallback>, Integer, Hash)> show_callback_with_http_info(id)

```ruby
begin
  # Show Callback
  data, status_code, headers = api_instance.show_callback_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCallback>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->show_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Callback ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**SingleCallback**](SingleCallback.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_callback_response

> <SingleCallbackResponse> show_callback_response(callback_id, id)

Show Callback Response

Show details of a specific **Callback** response using a given `:id`.

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

api_instance = AssemblyRuby::CallbacksApi.new
callback_id = '088e4cf1-2508-4bd4-97ab-a78e4e869970' # String | Callback ID
id = '0c9cbb28-0b98-4560-9c81-7a4ea6cde95b' # String | Callback response ID

begin
  # Show Callback Response
  result = api_instance.show_callback_response(callback_id, id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->show_callback_response: #{e}"
end
```

#### Using the show_callback_response_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCallbackResponse>, Integer, Hash)> show_callback_response_with_http_info(callback_id, id)

```ruby
begin
  # Show Callback Response
  data, status_code, headers = api_instance.show_callback_response_with_http_info(callback_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCallbackResponse>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->show_callback_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_id** | **String** | Callback ID | [default to &#39;088e4cf1-2508-4bd4-97ab-a78e4e869970&#39;] |
| **id** | **String** | Callback response ID | [default to &#39;0c9cbb28-0b98-4560-9c81-7a4ea6cde95b&#39;] |

### Return type

[**SingleCallbackResponse**](SingleCallbackResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_callback

> <SingleCallback> update_callback(id, callback_request_body)

Update Callback

Update an existing **Callback** using a given `:id`. You can change the `URL`, the `object_type` and whether the **Callback** is `enabled` or `disabled`. 

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

api_instance = AssemblyRuby::CallbacksApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Callback ID
callback_request_body = AssemblyRuby::CallbackRequestBody.new({description: 'Users Callback', url: 'https://httpbin.org', object_type: 'users', enabled: 'true'}) # CallbackRequestBody | 

begin
  # Update Callback
  result = api_instance.update_callback(id, callback_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->update_callback: #{e}"
end
```

#### Using the update_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCallback>, Integer, Hash)> update_callback_with_http_info(id, callback_request_body)

```ruby
begin
  # Update Callback
  data, status_code, headers = api_instance.update_callback_with_http_info(id, callback_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCallback>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CallbacksApi->update_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Callback ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |
| **callback_request_body** | [**CallbackRequestBody**](CallbackRequestBody.md) |  |  |

### Return type

[**SingleCallback**](SingleCallback.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

