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

# Unit tests for AssemblyRuby::BatchTransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BatchTransactionsApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::BatchTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BatchTransactionsApi' do
    it 'should create an instance of BatchTransactionsApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::BatchTransactionsApi)
    end
  end

  # unit tests for list_batch_transactions
  # List Batch Transactions
  # Retrieve an ordered and paginated list of existing **Batch Transactions**. The list can be filtered by **Account**, **Batch ID**, **Item**, and **Transaction Type**. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @option opts [String] :account_id Bank, Card or Wallet Account ID.
  # @option opts [String] :batch_id Batch ID. This appears on a bank reference.
  # @option opts [String] :item_id Item ID
  # @option opts [String] :transaction_type The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  # @option opts [String] :transaction_type_method The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
  # @option opts [String] :direction Direction of the transaction. Options are debit, credit
  # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
  # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
  # @option opts [String] :disbursement_bank The bank used for disbursing the payment. Please use a default value of &#x60;any&#x60;
  # @return [ListBatchTransactions]
  describe 'list_batch_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_batch_transaction
  # Show Batch Transaction
  # Get a batch transaction using its ID
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @return [SingleBatchTransaction]
  describe 'show_batch_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_batch_transaction_items
  # Show Batch Transactions Items
  # Get all the items relating to a batch transactions ID
  # @param id Batch Transactions ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @return [Items]
  describe 'show_batch_transaction_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
