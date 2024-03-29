=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for AssemblyRuby::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::TransactionsApi)
    end
  end

  # unit tests for list_transactions
  # List Transactions
  # Retrieve an ordered and paginated list of **Transactions**. Note: &#x60;created_before&#x60; and &#x60;created_after&#x60; range can not be greater than 31 days
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @option opts [String] :account_id Bank, Card or Wallet Account ID.
  # @option opts [String] :item_id Item ID
  # @option opts [String] :transaction_type The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  # @option opts [String] :transaction_type_method The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  # @option opts [String] :direction Direction of the transaction.
  # @option opts [String] :user_id User ID.
  # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
  # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
  # @return [Transactions]
  describe 'list_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction
  # Show Transaction
  # Show details of a specific **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [SingleTransaction]
  describe 'show_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction_bank_account
  # Show Transaction Bank Account
  # Show the **Bank Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [BankAccount]
  describe 'show_transaction_bank_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction_card_account
  # Show Transaction Card Account
  # Show the **Card Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [CardAccount]
  describe 'show_transaction_card_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction_fees
  # Show Transaction Fees
  # Show the **Fees** associated with the **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [Fees]
  describe 'show_transaction_fees test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction_user
  # Show Transaction User
  # Show the **User** associated with the **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_transaction_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_transaction_wallet_account
  # Show Transaction Wallet Account
  # Show the **Wallet Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [WalletAccount]
  describe 'show_transaction_wallet_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
