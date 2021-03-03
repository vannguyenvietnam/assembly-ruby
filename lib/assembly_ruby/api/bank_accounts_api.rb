=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module AssemblyRuby
  class BankAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Bank Account
    # Create a **Bank Account** to be used as either a funding source or a Disbursement destination. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a `token` when involving **Bank Accounts**. 
    # @param bank_account_request_body [BankAccountRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def create_bank_account(bank_account_request_body, opts = {})
      data, _status_code, _headers = create_bank_account_with_http_info(bank_account_request_body, opts)
      data
    end

    # Create Bank Account
    # Create a **Bank Account** to be used as either a funding source or a Disbursement destination. Store the returned &#x60;:id&#x60; and use it for a &#x60;make_payment&#x60; **Item Action** call. The &#x60;:id&#x60; is also referred to as a &#x60;token&#x60; when involving **Bank Accounts**. 
    # @param bank_account_request_body [BankAccountRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def create_bank_account_with_http_info(bank_account_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_bank_account ...'
      end
      # verify the required parameter 'bank_account_request_body' is set
      if @api_client.config.client_side_validation && bank_account_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_request_body' when calling BankAccountsApi.create_bank_account"
      end
      # resource path
      local_var_path = '/bank_accounts'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redact Bank Account
    # Redact a **Bank Account** using a given `:id`. Redacted **Bank Accounts** can no longer be used as a funding source or a Disbursement destination. 
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [BankAccountDeletion]
    def redact_bank_account(id, opts = {})
      data, _status_code, _headers = redact_bank_account_with_http_info(id, opts)
      data
    end

    # Redact Bank Account
    # Redact a **Bank Account** using a given &#x60;:id&#x60;. Redacted **Bank Accounts** can no longer be used as a funding source or a Disbursement destination. 
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountDeletion, Integer, Hash)>] BankAccountDeletion data, response status code and response headers
    def redact_bank_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.redact_bank_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountsApi.redact_bank_account"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountDeletion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.redact_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#redact_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Penny Amount
    # When penny verification is enabled, this API call sends two penny transactions to the specified bank account for verification. **Note**: This API call is not required when your platform has automatic penny verification enabled, as this is instead done by the system. Penny credit verification is only supported for US platforms. 
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def send_penny_amount(id, opts = {})
      data, _status_code, _headers = send_penny_amount_with_http_info(id, opts)
      data
    end

    # Send Penny Amount
    # When penny verification is enabled, this API call sends two penny transactions to the specified bank account for verification. **Note**: This API call is not required when your platform has automatic penny verification enabled, as this is instead done by the system. Penny credit verification is only supported for US platforms. 
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def send_penny_amount_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.send_penny_amount ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountsApi.send_penny_amount"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}/penny_send'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"BankAccountsApi.send_penny_amount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#send_penny_amount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Bank Account
    # Show details of a specific **Bank Account** using a given `:id`.
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def show_bank_account(id, opts = {})
      data, _status_code, _headers = show_bank_account_with_http_info(id, opts)
      data
    end

    # Show Bank Account
    # Show details of a specific **Bank Account** using a given &#x60;:id&#x60;.
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def show_bank_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.show_bank_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountsApi.show_bank_account"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"BankAccountsApi.show_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#show_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Bank Account User
    # Show the **User** the **Bank Account** is associated with using a given `:id`.
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_bank_account_user(id, opts = {})
      data, _status_code, _headers = show_bank_account_user_with_http_info(id, opts)
      data
    end

    # Show Bank Account User
    # Show the **User** the **Bank Account** is associated with using a given &#x60;:id&#x60;.
    # @param id [String] Bank account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_bank_account_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.show_bank_account_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountsApi.show_bank_account_user"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}/users'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"BankAccountsApi.show_bank_account_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#show_bank_account_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate Routing Number
    # Validate a US bank routing number before creating an account. This can be used to provide on-demand verification, and further information of the bank information a User is providing.
    # @param routing_number [String] Bank account routing number
    # @param [Hash] opts the optional parameters
    # @return [SingleRoutingNumber]
    def validate_routing_number(routing_number, opts = {})
      data, _status_code, _headers = validate_routing_number_with_http_info(routing_number, opts)
      data
    end

    # Validate Routing Number
    # Validate a US bank routing number before creating an account. This can be used to provide on-demand verification, and further information of the bank information a User is providing.
    # @param routing_number [String] Bank account routing number
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleRoutingNumber, Integer, Hash)>] SingleRoutingNumber data, response status code and response headers
    def validate_routing_number_with_http_info(routing_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.validate_routing_number ...'
      end
      # verify the required parameter 'routing_number' is set
      if @api_client.config.client_side_validation && routing_number.nil?
        fail ArgumentError, "Missing the required parameter 'routing_number' when calling BankAccountsApi.validate_routing_number"
      end
      # resource path
      local_var_path = '/tools/routing_number'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'routing_number'] = routing_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleRoutingNumber'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.validate_routing_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#validate_routing_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Penny Amount
    # When penny verification is enabled, this API call verifies the two penny transactions that were sent to a specified bank account using **Send Penny Amount**. **Note**: This API call requires you to provide a front-end interface to your end-users into which they can input the penny amounts required for a successful verification. Your front-end interface should then pass the information into this API call. Penny credit verification is only supported for US platforms. 
    # @param id [String] Bank account ID
    # @param penny_verify_request_body [PennyVerifyRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def verify_penny_amount(id, penny_verify_request_body, opts = {})
      data, _status_code, _headers = verify_penny_amount_with_http_info(id, penny_verify_request_body, opts)
      data
    end

    # Verify Penny Amount
    # When penny verification is enabled, this API call verifies the two penny transactions that were sent to a specified bank account using **Send Penny Amount**. **Note**: This API call requires you to provide a front-end interface to your end-users into which they can input the penny amounts required for a successful verification. Your front-end interface should then pass the information into this API call. Penny credit verification is only supported for US platforms. 
    # @param id [String] Bank account ID
    # @param penny_verify_request_body [PennyVerifyRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def verify_penny_amount_with_http_info(id, penny_verify_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.verify_penny_amount ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountsApi.verify_penny_amount"
      end
      # verify the required parameter 'penny_verify_request_body' is set
      if @api_client.config.client_side_validation && penny_verify_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'penny_verify_request_body' when calling BankAccountsApi.verify_penny_amount"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}/penny_verify'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(penny_verify_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.verify_penny_amount",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#verify_penny_amount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
