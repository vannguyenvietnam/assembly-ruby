=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for AssemblyRuby::WalletAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WalletAccountsApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::WalletAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WalletAccountsApi' do
    it 'should create an instance of WalletAccountsApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::WalletAccountsApi)
    end
  end

  # unit tests for bill_payment
  # Pay a Bill
  # Pay a bill by withdrawing funds from a **Wallet Account** to a specified bpay account.
  # @param id Account ID
  # @param bill_payment_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleDisbursement]
  describe 'bill_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for deposit_funds
  # Deposit Funds
  # Deposit funds to a **Wallet Account** from a specified payment account.
  # @param id Wallent account ID
  # @param deposit_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleDisbursement]
  describe 'deposit_funds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_wallet_account
  # Show Wallet Account
  # Show details of a specific **Wallet Account** using a given &#x60;:id.&#x60;
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [WalletAccount]
  describe 'show_wallet_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_wallet_account_nbpay_details
  # Show Wallet Account BPAY Details
  # Show BPAY details of a specific **Wallet Account** using a given &#x60;:id.&#x60;
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [WalletAccountBpayDetails]
  describe 'show_wallet_account_nbpay_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_wallet_account_npp_details
  # Show Wallet Account NPP Details
  # Show NPP details of a specific **Wallet Account** using a given &#x60;:id.&#x60;
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [WalletAccountNppDetails]
  describe 'show_wallet_account_npp_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_wallet_account_user
  # Show Wallet Account User
  # Show the **User** the **Wallet Account** is associated with using a given &#x60;:id&#x60;.
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_wallet_account_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for withdraw_funds
  # Withdraw Funds
  # Withdraw funds from a **Wallet Account** to a specified disbursement account.
  # @param id Wallet account ID
  # @param withdraw_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleDisbursement]
  describe 'withdraw_funds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
