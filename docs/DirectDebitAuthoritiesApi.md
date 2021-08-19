# AssemblyRuby::DirectDebitAuthoritiesApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_direct_debit_authority**](DirectDebitAuthoritiesApi.md#create_direct_debit_authority) | **POST** /direct_debit_authorities | Create Direct Debit Authority |
| [**list_direct_debit_authorities**](DirectDebitAuthoritiesApi.md#list_direct_debit_authorities) | **GET** /direct_debit_authorities | List Direct Debit Authorities |
| [**show_direct_debit_authority**](DirectDebitAuthoritiesApi.md#show_direct_debit_authority) | **GET** /direct_debit_authorities/{id} | Show Direct Debit Authority |


## create_direct_debit_authority

> <SingleDirectDebitAuthority> create_direct_debit_authority(direct_debit_authority_request_body)

Create Direct Debit Authority

Create a **Direct Debit Authority** associated with a **Bank Account**. The **Direct Debit Authority** is required to use a **Bank Account** as a funding source (Direct Debit/ACH). 

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
direct_debit_authority_request_body = AssemblyRuby::DirectDebitAuthorityRequestBody.new({account_id: '7fac6c60-6f5b-0138-eb9a-0a58a9feac03', amount: 100}) # DirectDebitAuthorityRequestBody | 

begin
  # Create Direct Debit Authority
  result = api_instance.create_direct_debit_authority(direct_debit_authority_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->create_direct_debit_authority: #{e}"
end
```

#### Using the create_direct_debit_authority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDirectDebitAuthority>, Integer, Hash)> create_direct_debit_authority_with_http_info(direct_debit_authority_request_body)

```ruby
begin
  # Create Direct Debit Authority
  data, status_code, headers = api_instance.create_direct_debit_authority_with_http_info(direct_debit_authority_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDirectDebitAuthority>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->create_direct_debit_authority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **direct_debit_authority_request_body** | [**DirectDebitAuthorityRequestBody**](DirectDebitAuthorityRequestBody.md) |  |  |

### Return type

[**SingleDirectDebitAuthority**](SingleDirectDebitAuthority.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_direct_debit_authorities

> <ListDirectDebitAuthorities> list_direct_debit_authorities(account_id, opts)

List Direct Debit Authorities

Retrieve an ordered and paginated list of existing **Direct Debit Authorities**.

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
account_id = 'a2463ce3-229b-4da1-8a07-93366c1092c9' # String | Bank account ID
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56 # Integer | Number of records to offset. Required for pagination.
}

begin
  # List Direct Debit Authorities
  result = api_instance.list_direct_debit_authorities(account_id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->list_direct_debit_authorities: #{e}"
end
```

#### Using the list_direct_debit_authorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDirectDebitAuthorities>, Integer, Hash)> list_direct_debit_authorities_with_http_info(account_id, opts)

```ruby
begin
  # List Direct Debit Authorities
  data, status_code, headers = api_instance.list_direct_debit_authorities_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDirectDebitAuthorities>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->list_direct_debit_authorities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Bank account ID | [default to &#39;a2463ce3-229b-4da1-8a07-93366c1092c9&#39;] |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |

### Return type

[**ListDirectDebitAuthorities**](ListDirectDebitAuthorities.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_direct_debit_authority

> <SingleDirectDebitAuthority> show_direct_debit_authority(id)

Show Direct Debit Authority

Show details of a specific **Direct Debit Authority** using a given `:id`.

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
id = '57abfd04-2ccb-4d55-8bd3-6f1a24a6ea47' # String | Direct debit authority ID

begin
  # Show Direct Debit Authority
  result = api_instance.show_direct_debit_authority(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->show_direct_debit_authority: #{e}"
end
```

#### Using the show_direct_debit_authority_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDirectDebitAuthority>, Integer, Hash)> show_direct_debit_authority_with_http_info(id)

```ruby
begin
  # Show Direct Debit Authority
  data, status_code, headers = api_instance.show_direct_debit_authority_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDirectDebitAuthority>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling DirectDebitAuthoritiesApi->show_direct_debit_authority_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Direct debit authority ID | [default to &#39;57abfd04-2ccb-4d55-8bd3-6f1a24a6ea47&#39;] |

### Return type

[**SingleDirectDebitAuthority**](SingleDirectDebitAuthority.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

