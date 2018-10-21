=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Process a Payout
    # Send funds from a selected funding source to a designated credit/debit card account or a prepaid card using an Original Credit Transaction (OCT). 
    # @param oct_create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def oct_create_payment(oct_create_payment_request, opts = {})
      oct_create_payment_with_http_info(oct_create_payment_request, opts)
      nil
    end

    # Process a Payout
    # Send funds from a selected funding source to a designated credit/debit card account or a prepaid card using an Original Credit Transaction (OCT). 
    # @param oct_create_payment_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def oct_create_payment_with_http_info(oct_create_payment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.oct_create_payment ...'
      end
      # verify the required parameter 'oct_create_payment_request' is set
      if @api_client.config.client_side_validation && oct_create_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'oct_create_payment_request' when calling DefaultApi.oct_create_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payouts/'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(oct_create_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#oct_create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
