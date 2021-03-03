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
  class CallbacksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Callback
    # Create a **Callback** to notify you at the `URL` when the `object_type` changes
    # @param callback_request_body [CallbackRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleCallback]
    def create_callback(callback_request_body, opts = {})
      data, _status_code, _headers = create_callback_with_http_info(callback_request_body, opts)
      data
    end

    # Create Callback
    # Create a **Callback** to notify you at the &#x60;URL&#x60; when the &#x60;object_type&#x60; changes
    # @param callback_request_body [CallbackRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleCallback, Integer, Hash)>] SingleCallback data, response status code and response headers
    def create_callback_with_http_info(callback_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.create_callback ...'
      end
      # verify the required parameter 'callback_request_body' is set
      if @api_client.config.client_side_validation && callback_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'callback_request_body' when calling CallbacksApi.create_callback"
      end
      # resource path
      local_var_path = '/callbacks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(callback_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleCallback'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.create_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#create_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Callback
    # Delete an existing Callback using a given `:id`.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @return [CallbackDeletion]
    def delete_callback(id, opts = {})
      data, _status_code, _headers = delete_callback_with_http_info(id, opts)
      data
    end

    # Delete Callback
    # Delete an existing Callback using a given &#x60;:id&#x60;.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallbackDeletion, Integer, Hash)>] CallbackDeletion data, response status code and response headers
    def delete_callback_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.delete_callback ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallbacksApi.delete_callback"
      end
      # resource path
      local_var_path = '/callbacks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CallbackDeletion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.delete_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#delete_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Callback Responses
    # Retrieve an ordered and paginated list of the responses garnered from a callback using a given `:id`.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @return [ListCallbackResponses]
    def list_callback_response(id, opts = {})
      data, _status_code, _headers = list_callback_response_with_http_info(id, opts)
      data
    end

    # List Callback Responses
    # Retrieve an ordered and paginated list of the responses garnered from a callback using a given &#x60;:id&#x60;.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @return [Array<(ListCallbackResponses, Integer, Hash)>] ListCallbackResponses data, response status code and response headers
    def list_callback_response_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.list_callback_response ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallbacksApi.list_callback_response"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CallbacksApi.list_callback_response, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CallbacksApi.list_callback_response, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CallbacksApi.list_callback_response, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/callbacks/{id}/responses'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCallbackResponses'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.list_callback_response",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#list_callback_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Callbacks
    # Retrieve an ordered and paginated list of all created **Callbacks**.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @option opts [String] :filter Narrow down records to relevant character string
    # @return [Callbacks]
    def list_callbacks(opts = {})
      data, _status_code, _headers = list_callbacks_with_http_info(opts)
      data
    end

    # List Callbacks
    # Retrieve an ordered and paginated list of all created **Callbacks**.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @option opts [String] :filter Narrow down records to relevant character string
    # @return [Array<(Callbacks, Integer, Hash)>] Callbacks data, response status code and response headers
    def list_callbacks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.list_callbacks ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CallbacksApi.list_callbacks, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CallbacksApi.list_callbacks, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CallbacksApi.list_callbacks, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/callbacks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Callbacks'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.list_callbacks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#list_callbacks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Callback
    # Show details of a specific **Callback** using a given `:id`.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @return [SingleCallback]
    def show_callback(id, opts = {})
      data, _status_code, _headers = show_callback_with_http_info(id, opts)
      data
    end

    # Show Callback
    # Show details of a specific **Callback** using a given &#x60;:id&#x60;.
    # @param id [String] Callback ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleCallback, Integer, Hash)>] SingleCallback data, response status code and response headers
    def show_callback_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.show_callback ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallbacksApi.show_callback"
      end
      # resource path
      local_var_path = '/callbacks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleCallback'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.show_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#show_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Callback Response
    # Show details of a specific **Callback** response using a given `:id`.
    # @param callback_id [String] Callback ID
    # @param id [String] Callback response ID
    # @param [Hash] opts the optional parameters
    # @return [SingleCallbackResponse]
    def show_callback_response(callback_id, id, opts = {})
      data, _status_code, _headers = show_callback_response_with_http_info(callback_id, id, opts)
      data
    end

    # Show Callback Response
    # Show details of a specific **Callback** response using a given &#x60;:id&#x60;.
    # @param callback_id [String] Callback ID
    # @param id [String] Callback response ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleCallbackResponse, Integer, Hash)>] SingleCallbackResponse data, response status code and response headers
    def show_callback_response_with_http_info(callback_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.show_callback_response ...'
      end
      # verify the required parameter 'callback_id' is set
      if @api_client.config.client_side_validation && callback_id.nil?
        fail ArgumentError, "Missing the required parameter 'callback_id' when calling CallbacksApi.show_callback_response"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallbacksApi.show_callback_response"
      end
      # resource path
      local_var_path = '/callbacks/{callback_id}/responses/{id}'.sub('{' + 'callback_id' + '}', CGI.escape(callback_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleCallbackResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.show_callback_response",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#show_callback_response\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Callback
    # Update an existing **Callback** using a given `:id`. You can change the `URL`, the `object_type` and whether the **Callback** is `enabled` or `disabled`. 
    # @param id [String] Callback ID
    # @param callback_request_body [CallbackRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleCallback]
    def update_callback(id, callback_request_body, opts = {})
      data, _status_code, _headers = update_callback_with_http_info(id, callback_request_body, opts)
      data
    end

    # Update Callback
    # Update an existing **Callback** using a given &#x60;:id&#x60;. You can change the &#x60;URL&#x60;, the &#x60;object_type&#x60; and whether the **Callback** is &#x60;enabled&#x60; or &#x60;disabled&#x60;. 
    # @param id [String] Callback ID
    # @param callback_request_body [CallbackRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleCallback, Integer, Hash)>] SingleCallback data, response status code and response headers
    def update_callback_with_http_info(id, callback_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallbacksApi.update_callback ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CallbacksApi.update_callback"
      end
      # verify the required parameter 'callback_request_body' is set
      if @api_client.config.client_side_validation && callback_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'callback_request_body' when calling CallbacksApi.update_callback"
      end
      # resource path
      local_var_path = '/callbacks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(callback_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleCallback'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"CallbacksApi.update_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallbacksApi#update_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
