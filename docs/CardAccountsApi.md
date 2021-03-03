# AssemblyRuby::CardAccountsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_card_account**](CardAccountsApi.md#create_card_account) | **POST** /card_accounts | Create Card Account |
| [**redact_card_account**](CardAccountsApi.md#redact_card_account) | **DELETE** /card_accounts/{id} | Redact Card Account |
| [**show_card_account**](CardAccountsApi.md#show_card_account) | **GET** /card_accounts/{id} | Show Card Account |
| [**show_card_account_user**](CardAccountsApi.md#show_card_account_user) | **GET** /card_accounts/{id}/users | Show Card Account User |
| [**verify_card**](CardAccountsApi.md#verify_card) | **PATCH** /card_accounts/{id}/verify | Verify Card |


## create_card_account

> <CardAccount> create_card_account(card_account_request_body)

Create Card Account

Create a Credit **Card Account** to be used as a funding source. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a **token** when involving Credit Cards. 

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

api_instance = AssemblyRuby::CardAccountsApi.new
card_account_request_body = AssemblyRuby::CardAccountRequestBody.new({full_name: 'John Doe', number: '4444111122223333', expiry_month: 1, expiry_year: 2025, cvv: '123', user_id: '83f54680-9600-4bee-a6d1-84a5d0e10059'}) # CardAccountRequestBody | 

begin
  # Create Card Account
  result = api_instance.create_card_account(card_account_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->create_card_account: #{e}"
end
```

#### Using the create_card_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardAccount>, Integer, Hash)> create_card_account_with_http_info(card_account_request_body)

```ruby
begin
  # Create Card Account
  data, status_code, headers = api_instance.create_card_account_with_http_info(card_account_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->create_card_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_account_request_body** | [**CardAccountRequestBody**](CardAccountRequestBody.md) |  |  |

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redact_card_account

> <CardAccountDeletion> redact_card_account(id)

Redact Card Account

Redact a Credit **Card Account** using a given `:id`. Redacted Credit **Card Accounts** can no longer be used as a funding source. 

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

api_instance = AssemblyRuby::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | ID of the card account to be deleted

begin
  # Redact Card Account
  result = api_instance.redact_card_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->redact_card_account: #{e}"
end
```

#### Using the redact_card_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardAccountDeletion>, Integer, Hash)> redact_card_account_with_http_info(id)

```ruby
begin
  # Redact Card Account
  data, status_code, headers = api_instance.redact_card_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardAccountDeletion>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->redact_card_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the card account to be deleted | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**CardAccountDeletion**](CardAccountDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_card_account

> <CardAccount> show_card_account(id)

Show Card Account

Show details of a specific Credit **Card Account** using a given `:id`. You can toggle the card account number display to show the first 6 digits in addition to the last 4 digits. Contact Assembly if you want to toggle the card account display. 

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

api_instance = AssemblyRuby::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Card account ID

begin
  # Show Card Account
  result = api_instance.show_card_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->show_card_account: #{e}"
end
```

#### Using the show_card_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardAccount>, Integer, Hash)> show_card_account_with_http_info(id)

```ruby
begin
  # Show Card Account
  data, status_code, headers = api_instance.show_card_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->show_card_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Card account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_card_account_user

> <SingleUser> show_card_account_user(id)

Show Card Account User

Show the **User** the Credit **Card Account** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::CardAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Card account ID

begin
  # Show Card Account User
  result = api_instance.show_card_account_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->show_card_account_user: #{e}"
end
```

#### Using the show_card_account_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUser>, Integer, Hash)> show_card_account_user_with_http_info(id)

```ruby
begin
  # Show Card Account User
  data, status_code, headers = api_instance.show_card_account_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUser>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->show_card_account_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Card account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;] |

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_card

> <CardAccount> verify_card(id)

Verify Card

Where pre-authorization is enabled on a platform, verifies a **Card Account** when a **Card Account** is successfully verified, its verification status is `verified`.

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

api_instance = AssemblyRuby::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Card account ID

begin
  # Verify Card
  result = api_instance.verify_card(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->verify_card: #{e}"
end
```

#### Using the verify_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardAccount>, Integer, Hash)> verify_card_with_http_info(id)

```ruby
begin
  # Verify Card
  data, status_code, headers = api_instance.verify_card_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling CardAccountsApi->verify_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Card account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

