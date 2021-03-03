# AssemblyRuby::AddressesApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**show_address**](AddressesApi.md#show_address) | **GET** /addresses/{id} | Show Address |


## show_address

> <Address> show_address(id)

Show Address

Show details of a specific Address using a given address `:id`.

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

api_instance = AssemblyRuby::AddressesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Address ID

begin
  # Show Address
  result = api_instance.show_address(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling AddressesApi->show_address: #{e}"
end
```

#### Using the show_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Address>, Integer, Hash)> show_address_with_http_info(id)

```ruby
begin
  # Show Address
  data, status_code, headers = api_instance.show_address_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Address>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling AddressesApi->show_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Address ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**Address**](Address.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

