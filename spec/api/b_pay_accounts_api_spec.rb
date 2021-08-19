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

# Unit tests for AssemblyRuby::BPayAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BPayAccountsApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::BPayAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BPayAccountsApi' do
    it 'should create an instance of BPayAccountsApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::BPayAccountsApi)
    end
  end

  # unit tests for create_b_pay_account
  # Create BPay Account
  # Create a **BPay Account** to be used as a Disbursement destination. 
  # @param bpay_account_request_body 
  # @param [Hash] opts the optional parameters
  # @return [BpayAccount]
  describe 'create_b_pay_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redact_b_pay_account
  # Redact BPay Account (Future Feature)
  # Redact a **BPay Account** using a given &#x60;:id&#x60;. Redacted **BPay Accounts** can no longer be used as a Disbursement destination. 
  # @param id BPay account ID
  # @param [Hash] opts the optional parameters
  # @return [BpayAccountDeletion]
  describe 'redact_b_pay_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_b_pay_account
  # Show BPay Account
  # Show details of a specific **BPay Account** using a given &#x60;:id&#x60;.
  # @param id BPay account ID
  # @param [Hash] opts the optional parameters
  # @return [BpayAccount]
  describe 'show_b_pay_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_b_pay_account_user
  # Show BPay Account User
  # Show the **User** the **BPay Account** is associated with using a given &#x60;:id&#x60;.
  # @param id BPay account ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_b_pay_account_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
