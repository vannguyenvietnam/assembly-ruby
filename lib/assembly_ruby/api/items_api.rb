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
  class ItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Item
    # Create an **Item**. Items require two **Users**, a buyer and a seller. The `buyer_id` and `seller_id` are your unique user identifiers. 
    # @param item_request_body [ItemRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def create_item(item_request_body, opts = {})
      data, _status_code, _headers = create_item_with_http_info(item_request_body, opts)
      data
    end

    # Create Item
    # Create an **Item**. Items require two **Users**, a buyer and a seller. The &#x60;buyer_id&#x60; and &#x60;seller_id&#x60; are your unique user identifiers. 
    # @param item_request_body [ItemRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def create_item_with_http_info(item_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.create_item ...'
      end
      # verify the required parameter 'item_request_body' is set
      if @api_client.config.client_side_validation && item_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'item_request_body' when calling ItemsApi.create_item"
      end
      # resource path
      local_var_path = '/items'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(item_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.create_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#create_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Item
    # Delete an existing **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def delete_item(id, opts = {})
      data, _status_code, _headers = delete_item_with_http_info(id, opts)
      data
    end

    # Delete Item
    # Delete an existing **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def delete_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.delete_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.delete_item"
      end
      # resource path
      local_var_path = '/items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.delete_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#delete_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Item Batch Transactions
    # Retrieve an ordered and paginated list of **Batch Transactions** associated with the `Item` using a given `:id`. This will include both direct debits coming in, and the disbursements going out.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [ListBatchTransactions]
    def list_item_batch_transactions(id, opts = {})
      data, _status_code, _headers = list_item_batch_transactions_with_http_info(id, opts)
      data
    end

    # List Item Batch Transactions
    # Retrieve an ordered and paginated list of **Batch Transactions** associated with the &#x60;Item&#x60; using a given &#x60;:id&#x60;. This will include both direct debits coming in, and the disbursements going out.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListBatchTransactions, Integer, Hash)>] ListBatchTransactions data, response status code and response headers
    def list_item_batch_transactions_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.list_item_batch_transactions ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.list_item_batch_transactions"
      end
      # resource path
      local_var_path = '/items/{id}/batch_transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListBatchTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.list_item_batch_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#list_item_batch_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Item Transactions
    # Retrieve an ordered and paginated list of **Transactions** associated with the **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Transactions]
    def list_item_transactions(id, opts = {})
      data, _status_code, _headers = list_item_transactions_with_http_info(id, opts)
      data
    end

    # List Item Transactions
    # Retrieve an ordered and paginated list of **Transactions** associated with the **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transactions, Integer, Hash)>] Transactions data, response status code and response headers
    def list_item_transactions_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.list_item_transactions ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.list_item_transactions"
      end
      # resource path
      local_var_path = '/items/{id}/transactions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Transactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.list_item_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#list_item_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Items
    # OK
    # @param search [String] A text value to be used for searching within the item description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
    # @return [Items]
    def list_items(search, opts = {})
      data, _status_code, _headers = list_items_with_http_info(search, opts)
      data
    end

    # List Items
    # OK
    # @param search [String] A text value to be used for searching within the item description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
    # @return [Array<(Items, Integer, Hash)>] Items data, response status code and response headers
    def list_items_with_http_info(search, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.list_items ...'
      end
      # verify the required parameter 'search' is set
      if @api_client.config.client_side_validation && search.nil?
        fail ArgumentError, "Missing the required parameter 'search' when calling ItemsApi.list_items"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ItemsApi.list_items, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ItemsApi.list_items, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ItemsApi.list_items, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/items'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = search
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'Items'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.list_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#list_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item
    # Show details of a specific **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def show_item(id, opts = {})
      data, _status_code, _headers = show_item_with_http_info(id, opts)
      data
    end

    # Show Item
    # Show details of a specific **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def show_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item"
      end
      # resource path
      local_var_path = '/items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.show_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item Buyer
    # Show the buyer **User** associated with the **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_item_buyer(id, opts = {})
      data, _status_code, _headers = show_item_buyer_with_http_info(id, opts)
      data
    end

    # Show Item Buyer
    # Show the buyer **User** associated with the **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_item_buyer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item_buyer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item_buyer"
      end
      # resource path
      local_var_path = '/items/{id}/buyers'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ItemsApi.show_item_buyer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item_buyer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item Fees
    # Show the **Fees** associated with the **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Fees]
    def show_item_fees(id, opts = {})
      data, _status_code, _headers = show_item_fees_with_http_info(id, opts)
      data
    end

    # Show Item Fees
    # Show the **Fees** associated with the **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Fees, Integer, Hash)>] Fees data, response status code and response headers
    def show_item_fees_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item_fees ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item_fees"
      end
      # resource path
      local_var_path = '/items/{id}/fees'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ItemsApi.show_item_fees",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item_fees\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item Seller
    # Show the seller **User** associated with the **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_item_seller(id, opts = {})
      data, _status_code, _headers = show_item_seller_with_http_info(id, opts)
      data
    end

    # Show Item Seller
    # Show the seller **User** associated with the **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_item_seller_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item_seller ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item_seller"
      end
      # resource path
      local_var_path = '/items/{id}/sellers'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"ItemsApi.show_item_seller",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item_seller\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item Status
    # Show the status of an **Item** using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleStatus]
    def show_item_status(id, opts = {})
      data, _status_code, _headers = show_item_status_with_http_info(id, opts)
      data
    end

    # Show Item Status
    # Show the status of an **Item** using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleStatus, Integer, Hash)>] SingleStatus data, response status code and response headers
    def show_item_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item_status"
      end
      # resource path
      local_var_path = '/items/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.show_item_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Item Wire Details
    # Show the **Item** wire payment details using a given `:id`.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [SingleWireDetailsWithId]
    def show_item_wire_details(id, opts = {})
      data, _status_code, _headers = show_item_wire_details_with_http_info(id, opts)
      data
    end

    # Show Item Wire Details
    # Show the **Item** wire payment details using a given &#x60;:id&#x60;.
    # @param id [String] Marketplace / Platform item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleWireDetailsWithId, Integer, Hash)>] SingleWireDetailsWithId data, response status code and response headers
    def show_item_wire_details_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.show_item_wire_details ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.show_item_wire_details"
      end
      # resource path
      local_var_path = '/items/{id}/wire_details'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleWireDetailsWithId'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.show_item_wire_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#show_item_wire_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Item
    # Update an existing **Items** attributes using a given `:id`. Note: An item can only be updated if it’s in `pending` state. Once an item has begun a payment process, you cannot update it. 
    # @param id [String] Item ID
    # @param update_item_request_body [UpdateItemRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleItem]
    def update_item(id, update_item_request_body, opts = {})
      data, _status_code, _headers = update_item_with_http_info(id, update_item_request_body, opts)
      data
    end

    # Update Item
    # Update an existing **Items** attributes using a given &#x60;:id&#x60;. Note: An item can only be updated if it’s in &#x60;pending&#x60; state. Once an item has begun a payment process, you cannot update it. 
    # @param id [String] Item ID
    # @param update_item_request_body [UpdateItemRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleItem, Integer, Hash)>] SingleItem data, response status code and response headers
    def update_item_with_http_info(id, update_item_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.update_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.update_item"
      end
      # verify the required parameter 'update_item_request_body' is set
      if @api_client.config.client_side_validation && update_item_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_item_request_body' when calling ItemsApi.update_item"
      end
      # resource path
      local_var_path = '/items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_item_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleItem'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"ItemsApi.update_item",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#update_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end