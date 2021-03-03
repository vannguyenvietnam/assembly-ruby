# AssemblyRuby::WalletAccountsApi

All URIs are relative to *https://test.api.promisepay.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bill_payment**](WalletAccountsApi.md#bill_payment) | **POST** /wallet_accounts/{id}/bill_payment | Pay a Bill |
| [**deposit_funds**](WalletAccountsApi.md#deposit_funds) | **POST** /wallet_accounts/{id}/deposit | Deposit Funds |
| [**show_wallet_account**](WalletAccountsApi.md#show_wallet_account) | **GET** /wallet_accounts/{id} | Show Wallet Account |
| [**show_wallet_account_nbpay_details**](WalletAccountsApi.md#show_wallet_account_nbpay_details) | **GET** /wallet_accounts/{id}/bpay_details | Show Wallet Account BPAY Details |
| [**show_wallet_account_npp_details**](WalletAccountsApi.md#show_wallet_account_npp_details) | **GET** /wallet_accounts/{id}/npp_details | Show Wallet Account NPP Details |
| [**show_wallet_account_user**](WalletAccountsApi.md#show_wallet_account_user) | **GET** /wallet_accounts/{id}/users | Show Wallet Account User |
| [**withdraw_funds**](WalletAccountsApi.md#withdraw_funds) | **POST** /wallet_accounts/{id}/withdraw | Withdraw Funds |


## bill_payment

> <SingleDisbursement> bill_payment(id, bill_payment_request_body)

Pay a Bill

Pay a bill by withdrawing funds from a **Wallet Account** to a specified bpay account.

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = '8a31ebfa-421b-4cbb-9241-632f71b3778a' # String | Account ID
bill_payment_request_body = AssemblyRuby::BillPaymentRequestBody.new({account_id: 'c1824ad0-73f1-0138-3700-0a58a9feac09', amount: 173}) # BillPaymentRequestBody | 

begin
  # Pay a Bill
  result = api_instance.bill_payment(id, bill_payment_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->bill_payment: #{e}"
end
```

#### Using the bill_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDisbursement>, Integer, Hash)> bill_payment_with_http_info(id, bill_payment_request_body)

```ruby
begin
  # Pay a Bill
  data, status_code, headers = api_instance.bill_payment_with_http_info(id, bill_payment_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDisbursement>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->bill_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;] |
| **bill_payment_request_body** | [**BillPaymentRequestBody**](BillPaymentRequestBody.md) |  |  |

### Return type

[**SingleDisbursement**](SingleDisbursement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deposit_funds

> <SingleDisbursement> deposit_funds(id, deposit_request_body)

Deposit Funds

Deposit funds to a **Wallet Account** from a specified payment account.

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = 'bd6e9c20-73f1-0138-fb91-0a58a9feac09' # String | Wallent account ID
deposit_request_body = AssemblyRuby::DepositRequestBody.new({account_id: 'c1824ad0-73f1-0138-3700-0a58a9feac09', amount: 100}) # DepositRequestBody | 

begin
  # Deposit Funds
  result = api_instance.deposit_funds(id, deposit_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->deposit_funds: #{e}"
end
```

#### Using the deposit_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDisbursement>, Integer, Hash)> deposit_funds_with_http_info(id, deposit_request_body)

```ruby
begin
  # Deposit Funds
  data, status_code, headers = api_instance.deposit_funds_with_http_info(id, deposit_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDisbursement>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->deposit_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Wallent account ID | [default to &#39;bd6e9c20-73f1-0138-fb91-0a58a9feac09&#39;] |
| **deposit_request_body** | [**DepositRequestBody**](DepositRequestBody.md) |  |  |

### Return type

[**SingleDisbursement**](SingleDisbursement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_wallet_account

> <WalletAccount> show_wallet_account(id)

Show Wallet Account

Show details of a specific **Wallet Account** using a given `:id.`

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = '5c1c6b10-4c56-0137-8cd7-0242ac110002' # String | Account ID

begin
  # Show Wallet Account
  result = api_instance.show_wallet_account(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account: #{e}"
end
```

#### Using the show_wallet_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletAccount>, Integer, Hash)> show_wallet_account_with_http_info(id)

```ruby
begin
  # Show Wallet Account
  data, status_code, headers = api_instance.show_wallet_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletAccount>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID | [default to &#39;5c1c6b10-4c56-0137-8cd7-0242ac110002&#39;] |

### Return type

[**WalletAccount**](WalletAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_wallet_account_nbpay_details

> <WalletAccountBpayDetails> show_wallet_account_nbpay_details(id)

Show Wallet Account BPAY Details

Show BPAY details of a specific **Wallet Account** using a given `:id.`

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = '5c1c6b10-4c56-0137-8cd7-0242ac110002' # String | Account ID

begin
  # Show Wallet Account BPAY Details
  result = api_instance.show_wallet_account_nbpay_details(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_nbpay_details: #{e}"
end
```

#### Using the show_wallet_account_nbpay_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletAccountBpayDetails>, Integer, Hash)> show_wallet_account_nbpay_details_with_http_info(id)

```ruby
begin
  # Show Wallet Account BPAY Details
  data, status_code, headers = api_instance.show_wallet_account_nbpay_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletAccountBpayDetails>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_nbpay_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID | [default to &#39;5c1c6b10-4c56-0137-8cd7-0242ac110002&#39;] |

### Return type

[**WalletAccountBpayDetails**](WalletAccountBpayDetails.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_wallet_account_npp_details

> <WalletAccountNppDetails> show_wallet_account_npp_details(id)

Show Wallet Account NPP Details

Show NPP details of a specific **Wallet Account** using a given `:id.`

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = '5c1c6b10-4c56-0137-8cd7-0242ac110002' # String | Account ID

begin
  # Show Wallet Account NPP Details
  result = api_instance.show_wallet_account_npp_details(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_npp_details: #{e}"
end
```

#### Using the show_wallet_account_npp_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletAccountNppDetails>, Integer, Hash)> show_wallet_account_npp_details_with_http_info(id)

```ruby
begin
  # Show Wallet Account NPP Details
  data, status_code, headers = api_instance.show_wallet_account_npp_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletAccountNppDetails>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_npp_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID | [default to &#39;5c1c6b10-4c56-0137-8cd7-0242ac110002&#39;] |

### Return type

[**WalletAccountNppDetails**](WalletAccountNppDetails.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_wallet_account_user

> <SingleUser> show_wallet_account_user(id)

Show Wallet Account User

Show the **User** the **Wallet Account** is associated with using a given `:id`.

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Account ID

begin
  # Show Wallet Account User
  result = api_instance.show_wallet_account_user(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_user: #{e}"
end
```

#### Using the show_wallet_account_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUser>, Integer, Hash)> show_wallet_account_user_with_http_info(id)

```ruby
begin
  # Show Wallet Account User
  data, status_code, headers = api_instance.show_wallet_account_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUser>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->show_wallet_account_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;] |

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## withdraw_funds

> <SingleDisbursement> withdraw_funds(id, withdraw_request_body)

Withdraw Funds

Withdraw funds from a **Wallet Account** to a specified disbursement account.

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

api_instance = AssemblyRuby::WalletAccountsApi.new
id = 'bd6e9c20-73f1-0138-fb91-0a58a9feac09' # String | Wallet account ID
withdraw_request_body = AssemblyRuby::WithdrawRequestBody.new({account_id: 'c1824ad0-73f1-0138-3700-0a58a9feac09', amount: 173}) # WithdrawRequestBody | 

begin
  # Withdraw Funds
  result = api_instance.withdraw_funds(id, withdraw_request_body)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->withdraw_funds: #{e}"
end
```

#### Using the withdraw_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleDisbursement>, Integer, Hash)> withdraw_funds_with_http_info(id, withdraw_request_body)

```ruby
begin
  # Withdraw Funds
  data, status_code, headers = api_instance.withdraw_funds_with_http_info(id, withdraw_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleDisbursement>
rescue AssemblyRuby::ApiError => e
  puts "Error when calling WalletAccountsApi->withdraw_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Wallet account ID | [default to &#39;bd6e9c20-73f1-0138-fb91-0a58a9feac09&#39;] |
| **withdraw_request_body** | [**WithdrawRequestBody**](WithdrawRequestBody.md) |  |  |

### Return type

[**SingleDisbursement**](SingleDisbursement.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

