# AssemblyRuby::AuthenticationApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**token**](AuthenticationApi.md#token) | **POST** /tokens | Token |


## token

> <TokensResponse> token(tokens_request_body)

Token

Exchange client application credentials for a bearer token. Please ensure to call the auth issuing server as described at https://developer.assemblypayments.com/reference#authentication

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

api_instance = AssemblyRuby::AuthenticationApi.new
tokens_request_body = AssemblyRuby::TokensRequestBody.new({grant_type: 'client_credentials', client_id: '10ajtntet1ccghuo8mv9ojglma', client_secret: 'hto00nsjk6osurndceon4rsn2irhi8s4lurau5f797d0smb94l6', scope: 'im-au-04/cdbf9590-1db6-0139-ac4d-0a58a9feac03'}) # TokensRequestBody | 

begin
  # Token
  result = api_instance.token(tokens_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling AuthenticationApi->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokensResponse>, Integer, Hash)> token_with_http_info(tokens_request_body)

```ruby
begin
  # Token
  data, status_code, headers = api_instance.token_with_http_info(tokens_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokensResponse>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling AuthenticationApi->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokens_request_body** | [**TokensRequestBody**](TokensRequestBody.md) |  |  |

### Return type

[**TokensResponse**](TokensResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

