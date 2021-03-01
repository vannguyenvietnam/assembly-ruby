# AssemblyRuby::DirectDebitAuthoritiesApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_direct_debit_authority**](DirectDebitAuthoritiesApi.md#create_direct_debit_authority) | **POST** /direct_debit_authorities | Create Direct Debit Authority
[**list_direct_debit_authorities**](DirectDebitAuthoritiesApi.md#list_direct_debit_authorities) | **GET** /direct_debit_authorities | List Direct Debit Authorities
[**show_direct_debit_authority**](DirectDebitAuthoritiesApi.md#show_direct_debit_authority) | **GET** /direct_debit_authorities/{id} | Show Direct Debit Authority



## create_direct_debit_authority

> SingleDirectDebitAuthority create_direct_debit_authority(direct_debit_authority_request_body)

Create Direct Debit Authority

Create a **Direct Debit Authority** associated with a **Bank Account**. The **Direct Debit Authority** is required to use a **Bank Account** as a funding source (Direct Debit/ACH). 

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
direct_debit_authority_request_body = AssemblyRuby::DirectDebitAuthorityRequestBody.new # DirectDebitAuthorityRequestBody | 

begin
  #Create Direct Debit Authority
  result = api_instance.create_direct_debit_authority(direct_debit_authority_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DirectDebitAuthoritiesApi->create_direct_debit_authority: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **direct_debit_authority_request_body** | [**DirectDebitAuthorityRequestBody**](DirectDebitAuthorityRequestBody.md)|  | 

### Return type

[**SingleDirectDebitAuthority**](SingleDirectDebitAuthority.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_direct_debit_authorities

> ListDirectDebitAuthorities list_direct_debit_authorities(account_id, opts)

List Direct Debit Authorities

Retrieve an ordered and paginated list of existing **Direct Debit Authorities**.

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
account_id = 'a2463ce3-229b-4da1-8a07-93366c1092c9' # String | Bank account ID
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #List Direct Debit Authorities
  result = api_instance.list_direct_debit_authorities(account_id, opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DirectDebitAuthoritiesApi->list_direct_debit_authorities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Bank account ID | [default to &#39;a2463ce3-229b-4da1-8a07-93366c1092c9&#39;]
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**ListDirectDebitAuthorities**](ListDirectDebitAuthorities.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_direct_debit_authority

> SingleDirectDebitAuthority show_direct_debit_authority(id)

Show Direct Debit Authority

Show details of a specific **Direct Debit Authority** using a given `:id`.

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

api_instance = AssemblyRuby::DirectDebitAuthoritiesApi.new
id = '57abfd04-2ccb-4d55-8bd3-6f1a24a6ea47' # String | Direct debit authority ID

begin
  #Show Direct Debit Authority
  result = api_instance.show_direct_debit_authority(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling DirectDebitAuthoritiesApi->show_direct_debit_authority: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Direct debit authority ID | [default to &#39;57abfd04-2ccb-4d55-8bd3-6f1a24a6ea47&#39;]

### Return type

[**SingleDirectDebitAuthority**](SingleDirectDebitAuthority.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

