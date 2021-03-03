# AssemblyRuby::BankAccountsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank_account**](BankAccountsApi.md#create_bank_account) | **POST** /bank_accounts | Create Bank Account |
| [**redact_bank_account**](BankAccountsApi.md#redact_bank_account) | **DELETE** /bank_accounts/{id} | Redact Bank Account |
| [**send_penny_amount**](BankAccountsApi.md#send_penny_amount) | **PATCH** /bank_accounts/{id}/penny_send | Send Penny Amount |
| [**show_bank_account**](BankAccountsApi.md#show_bank_account) | **GET** /bank_accounts/{id} | Show Bank Account |
| [**show_bank_account_user**](BankAccountsApi.md#show_bank_account_user) | **GET** /bank_accounts/{id}/users | Show Bank Account User |
| [**validate_routing_number**](BankAccountsApi.md#validate_routing_number) | **GET** /tools/routing_number | Validate Routing Number |
| [**verify_penny_amount**](BankAccountsApi.md#verify_penny_amount) | **PATCH** /bank_accounts/{id}/penny_verify | Verify Penny Amount |


## create_bank_account

> <BankAccount> create_bank_account(bank_account_request_body)

Create Bank Account

Create a **Bank Account** to be used as either a funding source or a Disbursement destination. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a `token` when involving **Bank Accounts**. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
bank_account_request_body = AssemblyRuby::BankAccountRequestBody.new({user_id: 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee', bank_name: 'Bank of Australia', account_name: 'Samuel Seller', routing_number: '111123', account_number: '111234', account_type: 'savings', holder_type: 'personal', country: 'AUS'}) # BankAccountRequestBody | 

begin
  # Create Bank Account
  result = api_instance.create_bank_account(bank_account_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account: #{e}"
end
```

#### Using the create_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccount>, Integer, Hash)> create_bank_account_with_http_info(bank_account_request_body)

```ruby
begin
  # Create Bank Account
  data, status_code, headers = api_instance.create_bank_account_with_http_info(bank_account_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_request_body** | [**BankAccountRequestBody**](BankAccountRequestBody.md) |  |  |

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redact_bank_account

> <BankAccountDeletion> redact_bank_account(id)

Redact Bank Account

Redact a **Bank Account** using a given `:id`. Redacted **Bank Accounts** can no longer be used as a funding source or a Disbursement destination. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  # Redact Bank Account
  result = api_instance.redact_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->redact_bank_account: #{e}"
end
```

#### Using the redact_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDeletion>, Integer, Hash)> redact_bank_account_with_http_info(id)

```ruby
begin
  # Redact Bank Account
  data, status_code, headers = api_instance.redact_bank_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountDeletion>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->redact_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**BankAccountDeletion**](BankAccountDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_penny_amount

> <BankAccount> send_penny_amount(id)

Send Penny Amount

When penny verification is enabled, this API call sends two penny transactions to the specified bank account for verification. **Note**: This API call is not required when your platform has automatic penny verification enabled, as this is instead done by the system. Penny credit verification is only supported for US platforms. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  # Send Penny Amount
  result = api_instance.send_penny_amount(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->send_penny_amount: #{e}"
end
```

#### Using the send_penny_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccount>, Integer, Hash)> send_penny_amount_with_http_info(id)

```ruby
begin
  # Send Penny Amount
  data, status_code, headers = api_instance.send_penny_amount_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->send_penny_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_bank_account

> <BankAccount> show_bank_account(id)

Show Bank Account

Show details of a specific **Bank Account** using a given `:id`.

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID

begin
  # Show Bank Account
  result = api_instance.show_bank_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->show_bank_account: #{e}"
end
```

#### Using the show_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccount>, Integer, Hash)> show_bank_account_with_http_info(id)

```ruby
begin
  # Show Bank Account
  data, status_code, headers = api_instance.show_bank_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->show_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_bank_account_user

> <SingleUser> show_bank_account_user(id)

Show Bank Account User

Show the **User** the **Bank Account** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Bank account ID

begin
  # Show Bank Account User
  result = api_instance.show_bank_account_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->show_bank_account_user: #{e}"
end
```

#### Using the show_bank_account_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUser>, Integer, Hash)> show_bank_account_user_with_http_info(id)

```ruby
begin
  # Show Bank Account User
  data, status_code, headers = api_instance.show_bank_account_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUser>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->show_bank_account_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bank account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;] |

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_routing_number

> <SingleRoutingNumber> validate_routing_number(routing_number)

Validate Routing Number

Validate a US bank routing number before creating an account. This can be used to provide on-demand verification, and further information of the bank information a User is providing.

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

api_instance = AssemblyRuby::BankAccountsApi.new
routing_number = '122235821' # String | Bank account routing number

begin
  # Validate Routing Number
  result = api_instance.validate_routing_number(routing_number)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->validate_routing_number: #{e}"
end
```

#### Using the validate_routing_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleRoutingNumber>, Integer, Hash)> validate_routing_number_with_http_info(routing_number)

```ruby
begin
  # Validate Routing Number
  data, status_code, headers = api_instance.validate_routing_number_with_http_info(routing_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleRoutingNumber>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->validate_routing_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_number** | **String** | Bank account routing number | [default to &#39;122235821&#39;] |

### Return type

[**SingleRoutingNumber**](SingleRoutingNumber.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_penny_amount

> <BankAccount> verify_penny_amount(id, penny_verify_request_body)

Verify Penny Amount

When penny verification is enabled, this API call verifies the two penny transactions that were sent to a specified bank account using **Send Penny Amount**. **Note**: This API call requires you to provide a front-end interface to your end-users into which they can input the penny amounts required for a successful verification. Your front-end interface should then pass the information into this API call. Penny credit verification is only supported for US platforms. 

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

api_instance = AssemblyRuby::BankAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Bank account ID
penny_verify_request_body = AssemblyRuby::PennyVerifyRequestBody.new({amount_1: 37, amount_2: 37}) # PennyVerifyRequestBody | 

begin
  # Verify Penny Amount
  result = api_instance.verify_penny_amount(id, penny_verify_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->verify_penny_amount: #{e}"
end
```

#### Using the verify_penny_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccount>, Integer, Hash)> verify_penny_amount_with_http_info(id, penny_verify_request_body)

```ruby
begin
  # Verify Penny Amount
  data, status_code, headers = api_instance.verify_penny_amount_with_http_info(id, penny_verify_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling BankAccountsApi->verify_penny_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Bank account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;] |
| **penny_verify_request_body** | [**PennyVerifyRequestBody**](PennyVerifyRequestBody.md) |  |  |

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

