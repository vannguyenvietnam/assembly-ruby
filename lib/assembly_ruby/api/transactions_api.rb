=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'cgi'

module AssemblyRuby
  class TransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Transactions
    # Retrieve an ordered and paginated list of **Transactions**. Note: `created_before` and `created_after` range can not be greater than 31 days
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @option opts [String] :account_id Bank, Card or Wallet Account ID.
    # @option opts [String] :item_id Item ID
    # @option opts [String] :transaction_type The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :transaction_type_method The method the transaction was carried out with. Options for querying are: direct_debit, credit_card, npp, bpay, wire_transfer, wallet_account_transfer, direct_credit, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :direction Direction of the transaction.
    # @option opts [String] :user_id User ID.
    # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
    # @return [Transactions]
    def list_transactions(opts = {})
      data, _status_code, _headers = list_transactions_with_http_info(opts)
      data
    end

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
    # @return [Array<(Transactions, Integer, Hash)>] Transactions data, response status code and response headers
    def list_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.list_transactions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsApi.list_transactions, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsApi.list_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TransactionsApi.list_transactions, must be greater than or equal to 0.'
      end

      allowable_values = ["payment", "refund", "disbursement", "fee", "deposit", "withdrawal"]
      if @api_client.config.client_side_validation && opts[:'transaction_type'] && !allowable_values.include?(opts[:'transaction_type'])
        fail ArgumentError, "invalid value for \"transaction_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["direct_debit", "credit_card", "npp", "bpay", "wallet_account_transfer", "direct_credit", "wire_transfer", "misc"]
      if @api_client.config.client_side_validation && opts[:'transaction_type_method'] && !allowable_values.include?(opts[:'transaction_type_method'])
        fail ArgumentError, "invalid value for \"transaction_type_method\", must be one of #{allowable_values}"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'direction'] && !allowable_values.include?(opts[:'direction'])
        fail ArgumentError, "invalid value for \"direction\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'item_id'] = opts[:'item_id'] if !opts[:'item_id'].nil?
      query_params[:'transaction_type'] = opts[:'transaction_type'] if !opts[:'transaction_type'].nil?
      query_params[:'transaction_type_method'] = opts[:'transaction_type_method'] if !opts[:'transaction_type_method'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Transactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.list_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#list_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction
    # Show details of a specific **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [SingleTransaction]
    def show_transaction(id, opts = {})
      data, _status_code, _headers = show_transaction_with_http_info(id, opts)
      data
    end

    # Show Transaction
    # Show details of a specific **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleTransaction, Integer, Hash)>] SingleTransaction data, response status code and response headers
    def show_transaction_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction"
      end
      # resource path
      local_var_path = '/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction Bank Account
    # Show the **Bank Account** associated with the **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def show_transaction_bank_account(id, opts = {})
      data, _status_code, _headers = show_transaction_bank_account_with_http_info(id, opts)
      data
    end

    # Show Transaction Bank Account
    # Show the **Bank Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def show_transaction_bank_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction_bank_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction_bank_account"
      end
      # resource path
      local_var_path = '/transactions/{id}/bank_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction Card Account
    # Show the **Card Account** associated with the **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [CardAccount]
    def show_transaction_card_account(id, opts = {})
      data, _status_code, _headers = show_transaction_card_account_with_http_info(id, opts)
      data
    end

    # Show Transaction Card Account
    # Show the **Card Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardAccount, Integer, Hash)>] CardAccount data, response status code and response headers
    def show_transaction_card_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction_card_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction_card_account"
      end
      # resource path
      local_var_path = '/transactions/{id}/card_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction_card_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction_card_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction Fees
    # Show the **Fees** associated with the **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Fees]
    def show_transaction_fees(id, opts = {})
      data, _status_code, _headers = show_transaction_fees_with_http_info(id, opts)
      data
    end

    # Show Transaction Fees
    # Show the **Fees** associated with the **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Fees, Integer, Hash)>] Fees data, response status code and response headers
    def show_transaction_fees_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction_fees ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction_fees"
      end
      # resource path
      local_var_path = '/transactions/{id}/fees'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Fees'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction_fees",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction_fees\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction User
    # Show the **User** associated with the **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_transaction_user(id, opts = {})
      data, _status_code, _headers = show_transaction_user_with_http_info(id, opts)
      data
    end

    # Show Transaction User
    # Show the **User** associated with the **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_transaction_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction_user"
      end
      # resource path
      local_var_path = '/transactions/{id}/users'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Transaction Wallet Account
    # Show the **Wallet Account** associated with the **Transaction** using a given `:id`.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [WalletAccount]
    def show_transaction_wallet_account(id, opts = {})
      data, _status_code, _headers = show_transaction_wallet_account_with_http_info(id, opts)
      data
    end

    # Show Transaction Wallet Account
    # Show the **Wallet Account** associated with the **Transaction** using a given &#x60;:id&#x60;.
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletAccount, Integer, Hash)>] WalletAccount data, response status code and response headers
    def show_transaction_wallet_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.show_transaction_wallet_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.show_transaction_wallet_account"
      end
      # resource path
      local_var_path = '/transactions/{id}/wallet_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalletAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"TransactionsApi.show_transaction_wallet_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#show_transaction_wallet_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
