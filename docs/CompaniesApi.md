# AssemblyRuby::CompaniesApi

All URIs are relative to *https://test.api.promisepay.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_company**](CompaniesApi.md#create_company) | **POST** /companies | Create Company
[**list_companies**](CompaniesApi.md#list_companies) | **GET** /companies | List Companies
[**show_company**](CompaniesApi.md#show_company) | **GET** /companies/{id} | Show Company
[**update_company**](CompaniesApi.md#update_company) | **PATCH** /companies/{id} | Update Company



## create_company

> SingleCompany create_company(company_request_body)

Create Company

Create a **Company** associated with the **User** using a given `user_id`. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 

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

api_instance = AssemblyRuby::CompaniesApi.new
company_request_body = AssemblyRuby::CompanyRequestBody.new # CompanyRequestBody | 

begin
  #Create Company
  result = api_instance.create_company(company_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling CompaniesApi->create_company: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md)|  | 

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_companies

> SimpleCompanies list_companies(opts)

List Companies

Retrieve an ordered and paginated list of existing **Companies**.

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

api_instance = AssemblyRuby::CompaniesApi.new
opts = {
  limit: 10, # Integer | Number of records to retrieve. Up to 200.
  offset: 0 # Integer | Number of records to offset. Required for pagination.
}

begin
  #List Companies
  result = api_instance.list_companies(opts)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling CompaniesApi->list_companies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of records to retrieve. Up to 200. | [optional] [default to 10]
 **offset** | **Integer**| Number of records to offset. Required for pagination. | [optional] [default to 0]

### Return type

[**SimpleCompanies**](SimpleCompanies.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_company

> SingleCompany show_company(id)

Show Company

Show details of a specific **Company** using a given `:id`.

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

api_instance = AssemblyRuby::CompaniesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Company ID

begin
  #Show Company
  result = api_instance.show_company(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling CompaniesApi->show_company: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Company ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_company

> SingleCompany update_company(id, company_request_body)

Update Company

Update an existing **Company** attributes using a given `:id`.

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

api_instance = AssemblyRuby::CompaniesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Company ID
company_request_body = AssemblyRuby::CompanyRequestBody.new # CompanyRequestBody | 

begin
  #Update Company
  result = api_instance.update_company(id, company_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling CompaniesApi->update_company: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Company ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]
 **company_request_body** | [**CompanyRequestBody**](CompanyRequestBody.md)|  | 

### Return type

[**SingleCompany**](SingleCompany.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

