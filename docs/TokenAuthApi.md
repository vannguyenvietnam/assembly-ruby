# AssemblyRuby::TokenAuthApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_token**](TokenAuthApi.md#generate_token) | **POST** /token_auths | Generate Token |


## generate_token

> Object generate_token(token_auth_request_body)

Generate Token

Create a token, either for a bank or a card account, that can be used with the **PromisePay.js** package to securely send Assembly credit card details.

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

api_instance = AssemblyRuby::TokenAuthApi.new
token_auth_request_body = AssemblyRuby::TokenAuthRequestBody.new({token_type: 'bank', user_id: 'seller-68611249'}) # TokenAuthRequestBody | 

begin
  # Generate Token
  result = api_instance.generate_token(token_auth_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling TokenAuthApi->generate_token: #{e}"
end
```

#### Using the generate_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> generate_token_with_http_info(token_auth_request_body)

```ruby
begin
  # Generate Token
  data, status_code, headers = api_instance.generate_token_with_http_info(token_auth_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue AssemblyRuby::ApiError => e
  puts "Error when calling TokenAuthApi->generate_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_auth_request_body** | [**TokenAuthRequestBody**](TokenAuthRequestBody.md) |  |  |

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

