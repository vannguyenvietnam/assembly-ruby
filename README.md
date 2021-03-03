# assembly_ruby

AssemblyRuby - the Ruby gem for the Assembly API

Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [http://docs.assemblypayments.com/](http://docs.assemblypayments.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build assembly_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./assembly_ruby-1.0.0.gem
```

(for development, run `gem install --dev ./assembly_ruby-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'assembly_ruby', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'assembly_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'assembly_ruby'

# Setup authorization
AssemblyRuby.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AssemblyRuby::AddressesApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Address ID

begin
  #Show Address
  result = api_instance.show_address(id)
  p result
rescue AssemblyRuby::ApiError => e
  puts "Exception when calling AddressesApi->show_address: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://test.api.promisepay.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AssemblyRuby::AddressesApi* | [**show_address**](docs/AddressesApi.md#show_address) | **GET** /addresses/{id} | Show Address
*AssemblyRuby::AuthenticationApi* | [**token**](docs/AuthenticationApi.md#token) | **POST** /tokens | Token
*AssemblyRuby::BPayAccountsApi* | [**create_b_pay_account**](docs/BPayAccountsApi.md#create_b_pay_account) | **POST** /bpay_accounts | Create BPay Account
*AssemblyRuby::BPayAccountsApi* | [**redact_b_pay_account**](docs/BPayAccountsApi.md#redact_b_pay_account) | **DELETE** /bpay_accounts/{id} | Redact BPay Account (Future Feature)
*AssemblyRuby::BPayAccountsApi* | [**show_b_pay_account**](docs/BPayAccountsApi.md#show_b_pay_account) | **GET** /bpay_accounts/{id} | Show BPay Account
*AssemblyRuby::BPayAccountsApi* | [**show_b_pay_account_user**](docs/BPayAccountsApi.md#show_b_pay_account_user) | **GET** /bpay_accounts/{id}/users | Show BPay Account User
*AssemblyRuby::BankAccountsApi* | [**create_bank_account**](docs/BankAccountsApi.md#create_bank_account) | **POST** /bank_accounts | Create Bank Account
*AssemblyRuby::BankAccountsApi* | [**redact_bank_account**](docs/BankAccountsApi.md#redact_bank_account) | **DELETE** /bank_accounts/{id} | Redact Bank Account
*AssemblyRuby::BankAccountsApi* | [**send_penny_amount**](docs/BankAccountsApi.md#send_penny_amount) | **PATCH** /bank_accounts/{id}/penny_send | Send Penny Amount
*AssemblyRuby::BankAccountsApi* | [**show_bank_account**](docs/BankAccountsApi.md#show_bank_account) | **GET** /bank_accounts/{id} | Show Bank Account
*AssemblyRuby::BankAccountsApi* | [**show_bank_account_user**](docs/BankAccountsApi.md#show_bank_account_user) | **GET** /bank_accounts/{id}/users | Show Bank Account User
*AssemblyRuby::BankAccountsApi* | [**validate_routing_number**](docs/BankAccountsApi.md#validate_routing_number) | **GET** /tools/routing_number | Validate Routing Number
*AssemblyRuby::BankAccountsApi* | [**verify_penny_amount**](docs/BankAccountsApi.md#verify_penny_amount) | **PATCH** /bank_accounts/{id}/penny_verify | Verify Penny Amount
*AssemblyRuby::BatchTransactionsApi* | [**list_batch_transactions**](docs/BatchTransactionsApi.md#list_batch_transactions) | **GET** /batch_transactions | List Batch Transactions
*AssemblyRuby::BatchTransactionsApi* | [**show_batch_transaction**](docs/BatchTransactionsApi.md#show_batch_transaction) | **GET** /batch_transactions/{id} | Show Batch Transaction
*AssemblyRuby::CallbacksApi* | [**create_callback**](docs/CallbacksApi.md#create_callback) | **POST** /callbacks | Create Callback
*AssemblyRuby::CallbacksApi* | [**delete_callback**](docs/CallbacksApi.md#delete_callback) | **DELETE** /callbacks/{id} | Delete Callback
*AssemblyRuby::CallbacksApi* | [**list_callback_response**](docs/CallbacksApi.md#list_callback_response) | **GET** /callbacks/{id}/responses | List Callback Responses
*AssemblyRuby::CallbacksApi* | [**list_callbacks**](docs/CallbacksApi.md#list_callbacks) | **GET** /callbacks | List Callbacks
*AssemblyRuby::CallbacksApi* | [**show_callback**](docs/CallbacksApi.md#show_callback) | **GET** /callbacks/{id} | Show Callback
*AssemblyRuby::CallbacksApi* | [**show_callback_response**](docs/CallbacksApi.md#show_callback_response) | **GET** /callbacks/{callback_id}/responses/{id} | Show Callback Response
*AssemblyRuby::CallbacksApi* | [**update_callback**](docs/CallbacksApi.md#update_callback) | **PATCH** /callbacks/{id} | Update Callback
*AssemblyRuby::CardAccountsApi* | [**create_card_account**](docs/CardAccountsApi.md#create_card_account) | **POST** /card_accounts | Create Card Account
*AssemblyRuby::CardAccountsApi* | [**redact_card_account**](docs/CardAccountsApi.md#redact_card_account) | **DELETE** /card_accounts/{id} | Redact Card Account
*AssemblyRuby::CardAccountsApi* | [**show_card_account**](docs/CardAccountsApi.md#show_card_account) | **GET** /card_accounts/{id} | Show Card Account
*AssemblyRuby::CardAccountsApi* | [**show_card_account_user**](docs/CardAccountsApi.md#show_card_account_user) | **GET** /card_accounts/{id}/users | Show Card Account User
*AssemblyRuby::CardAccountsApi* | [**verify_card**](docs/CardAccountsApi.md#verify_card) | **PATCH** /card_accounts/{id}/verify | Verify Card
*AssemblyRuby::ChargesApi* | [**create_charge**](docs/ChargesApi.md#create_charge) | **POST** /charges | Create Charge
*AssemblyRuby::ChargesApi* | [**list_charges**](docs/ChargesApi.md#list_charges) | **GET** /charges | List Charges
*AssemblyRuby::ChargesApi* | [**show_charge**](docs/ChargesApi.md#show_charge) | **GET** /charges/{id} | Show Charge
*AssemblyRuby::ChargesApi* | [**show_charge_buyer**](docs/ChargesApi.md#show_charge_buyer) | **GET** /charges/{id}/buyers | Show Charge Buyer
*AssemblyRuby::ChargesApi* | [**show_charge_status**](docs/ChargesApi.md#show_charge_status) | **GET** /charges/{id}/status | Show Charge Status
*AssemblyRuby::CompaniesApi* | [**create_company**](docs/CompaniesApi.md#create_company) | **POST** /companies | Create Company
*AssemblyRuby::CompaniesApi* | [**list_companies**](docs/CompaniesApi.md#list_companies) | **GET** /companies | List Companies
*AssemblyRuby::CompaniesApi* | [**show_company**](docs/CompaniesApi.md#show_company) | **GET** /companies/{id} | Show Company
*AssemblyRuby::CompaniesApi* | [**update_company**](docs/CompaniesApi.md#update_company) | **PATCH** /companies/{id} | Update Company
*AssemblyRuby::DirectDebitAuthoritiesApi* | [**create_direct_debit_authority**](docs/DirectDebitAuthoritiesApi.md#create_direct_debit_authority) | **POST** /direct_debit_authorities | Create Direct Debit Authority
*AssemblyRuby::DirectDebitAuthoritiesApi* | [**list_direct_debit_authorities**](docs/DirectDebitAuthoritiesApi.md#list_direct_debit_authorities) | **GET** /direct_debit_authorities | List Direct Debit Authorities
*AssemblyRuby::DirectDebitAuthoritiesApi* | [**show_direct_debit_authority**](docs/DirectDebitAuthoritiesApi.md#show_direct_debit_authority) | **GET** /direct_debit_authorities/{id} | Show Direct Debit Authority
*AssemblyRuby::DisbursementsApi* | [**list_disbursement**](docs/DisbursementsApi.md#list_disbursement) | **GET** /disbursements | List Disbursements
*AssemblyRuby::DisbursementsApi* | [**show_disbursement**](docs/DisbursementsApi.md#show_disbursement) | **GET** /disbursements/{id} | Show Disbursement
*AssemblyRuby::DisbursementsApi* | [**show_disbursement_bank_accounts**](docs/DisbursementsApi.md#show_disbursement_bank_accounts) | **GET** /disbursements/{id}/bank_accounts | Show Disbursement Bank Accounts
*AssemblyRuby::DisbursementsApi* | [**show_disbursement_items**](docs/DisbursementsApi.md#show_disbursement_items) | **GET** /disbursements/{id}/items | Show Disbursement Items
*AssemblyRuby::DisbursementsApi* | [**show_disbursement_transactions**](docs/DisbursementsApi.md#show_disbursement_transactions) | **GET** /disbursements/{id}/transactions | Show Disbursement Transactions
*AssemblyRuby::DisbursementsApi* | [**show_disbursement_users**](docs/DisbursementsApi.md#show_disbursement_users) | **GET** /disbursements/{id}/users | Show Disbursement Users
*AssemblyRuby::DisbursementsApi* | [**show_disbursement_wallet_accounts**](docs/DisbursementsApi.md#show_disbursement_wallet_accounts) | **GET** /disbursements/{id}/wallet_accounts | Show Disbursement Wallet Accounts
*AssemblyRuby::FeesApi* | [**create_fee**](docs/FeesApi.md#create_fee) | **POST** /fees | Create fee
*AssemblyRuby::FeesApi* | [**list_fees**](docs/FeesApi.md#list_fees) | **GET** /fees | List Fees
*AssemblyRuby::FeesApi* | [**show_fee**](docs/FeesApi.md#show_fee) | **GET** /fees/{id} | Show Fee
*AssemblyRuby::ItemActionsApi* | [**authorize_payment**](docs/ItemActionsApi.md#authorize_payment) | **PATCH** /items/{id}/authorize_payment | Authorize Payment
*AssemblyRuby::ItemActionsApi* | [**cancel_item**](docs/ItemActionsApi.md#cancel_item) | **PATCH** /items/{id}/cancel | Cancel
*AssemblyRuby::ItemActionsApi* | [**capture_payment**](docs/ItemActionsApi.md#capture_payment) | **PATCH** /items/{id}/capture_payment | Capture Payment
*AssemblyRuby::ItemActionsApi* | [**make_payment**](docs/ItemActionsApi.md#make_payment) | **PATCH** /items/{id}/make_payment | Make Payment
*AssemblyRuby::ItemActionsApi* | [**refund**](docs/ItemActionsApi.md#refund) | **PATCH** /items/{id}/refund | Refund
*AssemblyRuby::ItemActionsApi* | [**void_payment**](docs/ItemActionsApi.md#void_payment) | **PATCH** /items/{id}/void_payment | Void Payment
*AssemblyRuby::ItemsApi* | [**create_item**](docs/ItemsApi.md#create_item) | **POST** /items | Create Item
*AssemblyRuby::ItemsApi* | [**delete_item**](docs/ItemsApi.md#delete_item) | **DELETE** /items/{id} | Delete Item
*AssemblyRuby::ItemsApi* | [**list_item_batch_transactions**](docs/ItemsApi.md#list_item_batch_transactions) | **GET** /items/{id}/batch_transactions | List Item Batch Transactions
*AssemblyRuby::ItemsApi* | [**list_item_transactions**](docs/ItemsApi.md#list_item_transactions) | **GET** /items/{id}/transactions | List Item Transactions
*AssemblyRuby::ItemsApi* | [**list_items**](docs/ItemsApi.md#list_items) | **GET** /items | List Items
*AssemblyRuby::ItemsApi* | [**show_item**](docs/ItemsApi.md#show_item) | **GET** /items/{id} | Show Item
*AssemblyRuby::ItemsApi* | [**show_item_buyer**](docs/ItemsApi.md#show_item_buyer) | **GET** /items/{id}/buyers | Show Item Buyer
*AssemblyRuby::ItemsApi* | [**show_item_fees**](docs/ItemsApi.md#show_item_fees) | **GET** /items/{id}/fees | Show Item Fees
*AssemblyRuby::ItemsApi* | [**show_item_seller**](docs/ItemsApi.md#show_item_seller) | **GET** /items/{id}/sellers | Show Item Seller
*AssemblyRuby::ItemsApi* | [**show_item_status**](docs/ItemsApi.md#show_item_status) | **GET** /items/{id}/status | Show Item Status
*AssemblyRuby::ItemsApi* | [**show_item_wire_details**](docs/ItemsApi.md#show_item_wire_details) | **GET** /items/{id}/wire_details | Show Item Wire Details
*AssemblyRuby::ItemsApi* | [**update_item**](docs/ItemsApi.md#update_item) | **PATCH** /items/{id} | Update Item
*AssemblyRuby::MarketplacesApi* | [**show_marketplace**](docs/MarketplacesApi.md#show_marketplace) | **GET** /marketplace | Show Marketplace
*AssemblyRuby::TokenAuthApi* | [**generate_token**](docs/TokenAuthApi.md#generate_token) | **POST** /token_auths | Generate Token
*AssemblyRuby::ToolsApi* | [**health_check**](docs/ToolsApi.md#health_check) | **GET** /tools/status | Health check
*AssemblyRuby::TransactionsApi* | [**list_transactions**](docs/TransactionsApi.md#list_transactions) | **GET** /transactions | List Transactions
*AssemblyRuby::TransactionsApi* | [**show_transaction**](docs/TransactionsApi.md#show_transaction) | **GET** /transactions/{id} | Show Transaction
*AssemblyRuby::TransactionsApi* | [**show_transaction_bank_account**](docs/TransactionsApi.md#show_transaction_bank_account) | **GET** /transactions/{id}/bank_accounts | Show Transaction Bank Account
*AssemblyRuby::TransactionsApi* | [**show_transaction_card_account**](docs/TransactionsApi.md#show_transaction_card_account) | **GET** /transactions/{id}/card_accounts | Show Transaction Card Account
*AssemblyRuby::TransactionsApi* | [**show_transaction_fees**](docs/TransactionsApi.md#show_transaction_fees) | **GET** /transactions/{id}/fees | Show Transaction Fees
*AssemblyRuby::TransactionsApi* | [**show_transaction_user**](docs/TransactionsApi.md#show_transaction_user) | **GET** /transactions/{id}/users | Show Transaction User
*AssemblyRuby::TransactionsApi* | [**show_transaction_wallet_account**](docs/TransactionsApi.md#show_transaction_wallet_account) | **GET** /transactions/{id}/wallet_accounts | Show Transaction Wallet Account
*AssemblyRuby::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /users | Create User
*AssemblyRuby::UsersApi* | [**list_user_b_pay_accounts**](docs/UsersApi.md#list_user_b_pay_accounts) | **GET** /users/{id}/bpay_accounts | List User's BPay Accounts
*AssemblyRuby::UsersApi* | [**list_user_items**](docs/UsersApi.md#list_user_items) | **GET** /users/{id}/items | List User Items
*AssemblyRuby::UsersApi* | [**list_users**](docs/UsersApi.md#list_users) | **GET** /users | List Users
*AssemblyRuby::UsersApi* | [**set_user_disbursement_account**](docs/UsersApi.md#set_user_disbursement_account) | **PATCH** /users/{id}/disbursement_account | Set User Disbursement Account
*AssemblyRuby::UsersApi* | [**show_user**](docs/UsersApi.md#show_user) | **GET** /users/{id} | Show User
*AssemblyRuby::UsersApi* | [**show_user_bank_account**](docs/UsersApi.md#show_user_bank_account) | **GET** /users/{id}/bank_accounts | Show User Bank Account
*AssemblyRuby::UsersApi* | [**show_user_card_account**](docs/UsersApi.md#show_user_card_account) | **GET** /users/{id}/card_accounts | Show User Card Account
*AssemblyRuby::UsersApi* | [**show_user_wallet_accounts**](docs/UsersApi.md#show_user_wallet_accounts) | **GET** /users/{id}/wallet_accounts | Show User Wallet Account
*AssemblyRuby::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /users/{id} | Update User
*AssemblyRuby::UsersApi* | [**verify_user**](docs/UsersApi.md#verify_user) | **PATCH** /users/{id}/identity_verified | Verify User (Prelive Only)
*AssemblyRuby::WalletAccountsApi* | [**bill_payment**](docs/WalletAccountsApi.md#bill_payment) | **POST** /wallet_accounts/{id}/bill_payment | Pay a Bill
*AssemblyRuby::WalletAccountsApi* | [**deposit_funds**](docs/WalletAccountsApi.md#deposit_funds) | **POST** /wallet_accounts/{id}/deposit | Deposit Funds
*AssemblyRuby::WalletAccountsApi* | [**show_wallet_account**](docs/WalletAccountsApi.md#show_wallet_account) | **GET** /wallet_accounts/{id} | Show Wallet Account
*AssemblyRuby::WalletAccountsApi* | [**show_wallet_account_nbpay_details**](docs/WalletAccountsApi.md#show_wallet_account_nbpay_details) | **GET** /wallet_accounts/{id}/bpay_details | Show Wallet Account BPAY Details
*AssemblyRuby::WalletAccountsApi* | [**show_wallet_account_npp_details**](docs/WalletAccountsApi.md#show_wallet_account_npp_details) | **GET** /wallet_accounts/{id}/npp_details | Show Wallet Account NPP Details
*AssemblyRuby::WalletAccountsApi* | [**show_wallet_account_user**](docs/WalletAccountsApi.md#show_wallet_account_user) | **GET** /wallet_accounts/{id}/users | Show Wallet Account User
*AssemblyRuby::WalletAccountsApi* | [**withdraw_funds**](docs/WalletAccountsApi.md#withdraw_funds) | **POST** /wallet_accounts/{id}/withdraw | Withdraw Funds


## Documentation for Models

 - [AssemblyRuby::Account](docs/Account.md)
 - [AssemblyRuby::AccountIdRequestBody](docs/AccountIdRequestBody.md)
 - [AssemblyRuby::Address](docs/Address.md)
 - [AssemblyRuby::AddressAddresses](docs/AddressAddresses.md)
 - [AssemblyRuby::AddressAddressesLinks](docs/AddressAddressesLinks.md)
 - [AssemblyRuby::BankAccount](docs/BankAccount.md)
 - [AssemblyRuby::BankAccountBankAccounts](docs/BankAccountBankAccounts.md)
 - [AssemblyRuby::BankAccountBankAccountsBank](docs/BankAccountBankAccountsBank.md)
 - [AssemblyRuby::BankAccountBankAccountsLinks](docs/BankAccountBankAccountsLinks.md)
 - [AssemblyRuby::BankAccountDeletion](docs/BankAccountDeletion.md)
 - [AssemblyRuby::BankAccountIdRequestBody](docs/BankAccountIdRequestBody.md)
 - [AssemblyRuby::BankAccountRequestBody](docs/BankAccountRequestBody.md)
 - [AssemblyRuby::BatchTransaction](docs/BatchTransaction.md)
 - [AssemblyRuby::BatchTransactionAccountExternal](docs/BatchTransactionAccountExternal.md)
 - [AssemblyRuby::BatchTransactionAccountExternalCurrency](docs/BatchTransactionAccountExternalCurrency.md)
 - [AssemblyRuby::BatchTransactionAddressCountry](docs/BatchTransactionAddressCountry.md)
 - [AssemblyRuby::BatchTransactionItem](docs/BatchTransactionItem.md)
 - [AssemblyRuby::BatchTransactionLinks](docs/BatchTransactionLinks.md)
 - [AssemblyRuby::BatchTransactionMarketplace](docs/BatchTransactionMarketplace.md)
 - [AssemblyRuby::BatchTransactionRelated](docs/BatchTransactionRelated.md)
 - [AssemblyRuby::BatchTransactionRelatedAccountTo](docs/BatchTransactionRelatedAccountTo.md)
 - [AssemblyRuby::BillPaymentRequestBody](docs/BillPaymentRequestBody.md)
 - [AssemblyRuby::BpayAccount](docs/BpayAccount.md)
 - [AssemblyRuby::BpayAccountDeletion](docs/BpayAccountDeletion.md)
 - [AssemblyRuby::BpayAccountRequestBody](docs/BpayAccountRequestBody.md)
 - [AssemblyRuby::BpayDetails](docs/BpayDetails.md)
 - [AssemblyRuby::BpayDetailsWithId](docs/BpayDetailsWithId.md)
 - [AssemblyRuby::Callback](docs/Callback.md)
 - [AssemblyRuby::CallbackDeletion](docs/CallbackDeletion.md)
 - [AssemblyRuby::CallbackLinks](docs/CallbackLinks.md)
 - [AssemblyRuby::CallbackRequestBody](docs/CallbackRequestBody.md)
 - [AssemblyRuby::CallbackResponse](docs/CallbackResponse.md)
 - [AssemblyRuby::CallbackResponsePayload](docs/CallbackResponsePayload.md)
 - [AssemblyRuby::CallbackResponseResponse](docs/CallbackResponseResponse.md)
 - [AssemblyRuby::Callbacks](docs/Callbacks.md)
 - [AssemblyRuby::CardAccount](docs/CardAccount.md)
 - [AssemblyRuby::CardAccountCardAccounts](docs/CardAccountCardAccounts.md)
 - [AssemblyRuby::CardAccountCardAccountsCard](docs/CardAccountCardAccountsCard.md)
 - [AssemblyRuby::CardAccountCardAccountsLinks](docs/CardAccountCardAccountsLinks.md)
 - [AssemblyRuby::CardAccountDeletion](docs/CardAccountDeletion.md)
 - [AssemblyRuby::CardAccountIdRequestBody](docs/CardAccountIdRequestBody.md)
 - [AssemblyRuby::CardAccountRequestBody](docs/CardAccountRequestBody.md)
 - [AssemblyRuby::Charge](docs/Charge.md)
 - [AssemblyRuby::ChargeLinks](docs/ChargeLinks.md)
 - [AssemblyRuby::ChargeRequestBody](docs/ChargeRequestBody.md)
 - [AssemblyRuby::ChargeStatus](docs/ChargeStatus.md)
 - [AssemblyRuby::Charges](docs/Charges.md)
 - [AssemblyRuby::Company](docs/Company.md)
 - [AssemblyRuby::CompanyRelated](docs/CompanyRelated.md)
 - [AssemblyRuby::CompanyRequestBody](docs/CompanyRequestBody.md)
 - [AssemblyRuby::CompanySelf](docs/CompanySelf.md)
 - [AssemblyRuby::DepositRequestBody](docs/DepositRequestBody.md)
 - [AssemblyRuby::DirectDebitAuthority](docs/DirectDebitAuthority.md)
 - [AssemblyRuby::DirectDebitAuthorityLinks](docs/DirectDebitAuthorityLinks.md)
 - [AssemblyRuby::DirectDebitAuthorityRelated](docs/DirectDebitAuthorityRelated.md)
 - [AssemblyRuby::DirectDebitAuthorityRequestBody](docs/DirectDebitAuthorityRequestBody.md)
 - [AssemblyRuby::Disbursement](docs/Disbursement.md)
 - [AssemblyRuby::DisbursementLinks](docs/DisbursementLinks.md)
 - [AssemblyRuby::Disbursements](docs/Disbursements.md)
 - [AssemblyRuby::Error](docs/Error.md)
 - [AssemblyRuby::Fee](docs/Fee.md)
 - [AssemblyRuby::FeeRequestBody](docs/FeeRequestBody.md)
 - [AssemblyRuby::Fees](docs/Fees.md)
 - [AssemblyRuby::Item](docs/Item.md)
 - [AssemblyRuby::ItemLinks](docs/ItemLinks.md)
 - [AssemblyRuby::ItemRelated](docs/ItemRelated.md)
 - [AssemblyRuby::ItemRequestBody](docs/ItemRequestBody.md)
 - [AssemblyRuby::Items](docs/Items.md)
 - [AssemblyRuby::ListBatchTransactions](docs/ListBatchTransactions.md)
 - [AssemblyRuby::ListBpayAccounts](docs/ListBpayAccounts.md)
 - [AssemblyRuby::ListBpayAccountsBpayAccounts](docs/ListBpayAccountsBpayAccounts.md)
 - [AssemblyRuby::ListBpayAccountsBpayDetails](docs/ListBpayAccountsBpayDetails.md)
 - [AssemblyRuby::ListBpayAccountsLinks](docs/ListBpayAccountsLinks.md)
 - [AssemblyRuby::ListBpayAccountsMeta](docs/ListBpayAccountsMeta.md)
 - [AssemblyRuby::ListCallbackResponses](docs/ListCallbackResponses.md)
 - [AssemblyRuby::ListCallbackResponsesLinks](docs/ListCallbackResponsesLinks.md)
 - [AssemblyRuby::ListDirectDebitAuthorities](docs/ListDirectDebitAuthorities.md)
 - [AssemblyRuby::Marketplace](docs/Marketplace.md)
 - [AssemblyRuby::MarketplaceMarketplaces](docs/MarketplaceMarketplaces.md)
 - [AssemblyRuby::MarketplaceMarketplacesBusinessInformation](docs/MarketplaceMarketplacesBusinessInformation.md)
 - [AssemblyRuby::MarketplaceMarketplacesLinks](docs/MarketplaceMarketplacesLinks.md)
 - [AssemblyRuby::MarketplaceMarketplacesRelated](docs/MarketplaceMarketplacesRelated.md)
 - [AssemblyRuby::PennyVerifyRequestBody](docs/PennyVerifyRequestBody.md)
 - [AssemblyRuby::RefundRequestBody](docs/RefundRequestBody.md)
 - [AssemblyRuby::SimpleCompanies](docs/SimpleCompanies.md)
 - [AssemblyRuby::SimpleCompany](docs/SimpleCompany.md)
 - [AssemblyRuby::SingleBatchTransaction](docs/SingleBatchTransaction.md)
 - [AssemblyRuby::SingleBpayDetailsWithId](docs/SingleBpayDetailsWithId.md)
 - [AssemblyRuby::SingleCallback](docs/SingleCallback.md)
 - [AssemblyRuby::SingleCallbackResponse](docs/SingleCallbackResponse.md)
 - [AssemblyRuby::SingleCharge](docs/SingleCharge.md)
 - [AssemblyRuby::SingleChargeStatus](docs/SingleChargeStatus.md)
 - [AssemblyRuby::SingleCompany](docs/SingleCompany.md)
 - [AssemblyRuby::SingleDirectDebitAuthority](docs/SingleDirectDebitAuthority.md)
 - [AssemblyRuby::SingleDisbursement](docs/SingleDisbursement.md)
 - [AssemblyRuby::SingleFee](docs/SingleFee.md)
 - [AssemblyRuby::SingleItem](docs/SingleItem.md)
 - [AssemblyRuby::SingleRoutingNumber](docs/SingleRoutingNumber.md)
 - [AssemblyRuby::SingleRoutingNumberRoutingNumber](docs/SingleRoutingNumberRoutingNumber.md)
 - [AssemblyRuby::SingleStatus](docs/SingleStatus.md)
 - [AssemblyRuby::SingleTransaction](docs/SingleTransaction.md)
 - [AssemblyRuby::SingleUser](docs/SingleUser.md)
 - [AssemblyRuby::SingleWireDetailsWithId](docs/SingleWireDetailsWithId.md)
 - [AssemblyRuby::Status](docs/Status.md)
 - [AssemblyRuby::TokenAuthRequestBody](docs/TokenAuthRequestBody.md)
 - [AssemblyRuby::TokensRequestBody](docs/TokensRequestBody.md)
 - [AssemblyRuby::TokensResponse](docs/TokensResponse.md)
 - [AssemblyRuby::ToolsStatus](docs/ToolsStatus.md)
 - [AssemblyRuby::Transaction](docs/Transaction.md)
 - [AssemblyRuby::TransactionLinks](docs/TransactionLinks.md)
 - [AssemblyRuby::TransactionMarketplace](docs/TransactionMarketplace.md)
 - [AssemblyRuby::TransactionPayeeDetails](docs/TransactionPayeeDetails.md)
 - [AssemblyRuby::TransactionRelated](docs/TransactionRelated.md)
 - [AssemblyRuby::TransactionRelatedTransactions](docs/TransactionRelatedTransactions.md)
 - [AssemblyRuby::Transactions](docs/Transactions.md)
 - [AssemblyRuby::UpdateItemRequestBody](docs/UpdateItemRequestBody.md)
 - [AssemblyRuby::UpdateUserRequestBody](docs/UpdateUserRequestBody.md)
 - [AssemblyRuby::User](docs/User.md)
 - [AssemblyRuby::UserLinks](docs/UserLinks.md)
 - [AssemblyRuby::UserRelated](docs/UserRelated.md)
 - [AssemblyRuby::UserRequestBody](docs/UserRequestBody.md)
 - [AssemblyRuby::Users](docs/Users.md)
 - [AssemblyRuby::WalletAccount](docs/WalletAccount.md)
 - [AssemblyRuby::WalletAccountBpayDetails](docs/WalletAccountBpayDetails.md)
 - [AssemblyRuby::WalletAccountBpayDetailsBpayDetails](docs/WalletAccountBpayDetailsBpayDetails.md)
 - [AssemblyRuby::WalletAccountNppDetails](docs/WalletAccountNppDetails.md)
 - [AssemblyRuby::WalletAccountNppDetailsNppDetails](docs/WalletAccountNppDetailsNppDetails.md)
 - [AssemblyRuby::WalletAccountNppDetailsNppDetailsMarketplacePayIds](docs/WalletAccountNppDetailsNppDetailsMarketplacePayIds.md)
 - [AssemblyRuby::WalletAccountWalletAccounts](docs/WalletAccountWalletAccounts.md)
 - [AssemblyRuby::WalletAccountWalletAccountsLinks](docs/WalletAccountWalletAccountsLinks.md)
 - [AssemblyRuby::WireDetails](docs/WireDetails.md)
 - [AssemblyRuby::WireDetailsWithId](docs/WireDetailsWithId.md)
 - [AssemblyRuby::WithdrawRequestBody](docs/WithdrawRequestBody.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication

### oAuth2ClientCredentials


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: N/A

