# AssemblyRuby::CompaniesApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_company**](CompaniesApi.md#create_company) | **POST** /companies | Create Company |
| [**list_companies**](CompaniesApi.md#list_companies) | **GET** /companies | List Companies |
| [**show_company**](CompaniesApi.md#show_company) | **GET** /companies/{id} | Show Company |
| [**update_company**](CompaniesApi.md#update_company) | **PATCH** /companies/{id} | Update Company |


## create_company

> <SingleCompany> create_company(company_request_body)

Create Company

Create a **Company** associated with the **User** using a given `user_id`. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 

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

api_instance = AssemblyRuby::CompaniesApi.new
company_request_body = AssemblyRuby::CompanyRequestBody.new({name: 'ABC', legal_name: 'ABC Pty Ltd', tax_number: '123456789', country: 'AUS', user_id: 'buyer-70729325'}) # CompanyRequestBody | 

begin
  # Create Company
  result = api_instance.create_company(company_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->create_company: #{e}"
end
```

#### Using the create_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCompany>, Integer, Hash)> create_company_with_http_info(company_request_body)

```ruby
begin
  # Create Company
  data, status_code, headers = api_instance.create_company_with_http_info(company_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCompany>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->create_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md) |  |  |

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_companies

> <SimpleCompanies> list_companies(opts)

List Companies

Retrieve an ordered and paginated list of existing **Companies**.

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

api_instance = AssemblyRuby::CompaniesApi.new
opts = {
  limit: 56, # Integer | Number of records to retrieve. Up to 200.
  offset: 56 # Integer | Number of records to offset. Required for pagination.
}

begin
  # List Companies
  result = api_instance.list_companies(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->list_companies: #{e}"
end
```

#### Using the list_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimpleCompanies>, Integer, Hash)> list_companies_with_http_info(opts)

```ruby
begin
  # List Companies
  data, status_code, headers = api_instance.list_companies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimpleCompanies>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->list_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of records to retrieve. Up to 200. | [optional][default to 10] |
| **offset** | **Integer** | Number of records to offset. Required for pagination. | [optional][default to 0] |

### Return type

[**SimpleCompanies**](SimpleCompanies.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_company

> <SingleCompany> show_company(id)

Show Company

Show details of a specific **Company** using a given `:id`.

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

api_instance = AssemblyRuby::CompaniesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Company ID

begin
  # Show Company
  result = api_instance.show_company(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->show_company: #{e}"
end
```

#### Using the show_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCompany>, Integer, Hash)> show_company_with_http_info(id)

```ruby
begin
  # Show Company
  data, status_code, headers = api_instance.show_company_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCompany>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->show_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Company ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_company

> <SingleCompany> update_company(id, company_request_body)

Update Company

Update an existing **Company** attributes using a given `:id`.

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

api_instance = AssemblyRuby::CompaniesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Company ID
company_request_body = AssemblyRuby::CompanyRequestBody.new({name: 'ABC', legal_name: 'ABC Pty Ltd', tax_number: '123456789', country: 'AUS', user_id: 'buyer-70729325'}) # CompanyRequestBody | 

begin
  # Update Company
  result = api_instance.update_company(id, company_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->update_company: #{e}"
end
```

#### Using the update_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleCompany>, Integer, Hash)> update_company_with_http_info(id, company_request_body)

```ruby
begin
  # Update Company
  data, status_code, headers = api_instance.update_company_with_http_info(id, company_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleCompany>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CompaniesApi->update_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Company ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |
| **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md) |  |  |

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

