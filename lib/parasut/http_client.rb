# lib/parasut/http_client.rb
module Parasut    
    class HttpClient

        class << self

            # The url base
            @@url_base="#{Parasut.options.api_base_url}/v4/#{Parasut.options.company_id}"

            def handle_headers(headers)

                # Append json content type if not exists
                headers.merge!({'Content-type': 'application/json'}) if headers['Content-type'].nil?

                # Handle access token header
                Her::Middleware::OAuthProviderHeader.add_header(headers)
                
            end
            # end handle_headers


            def post(endpoint, body={}, headers={}, parse_json=true)

                # The url
                url="#{@@url_base}/#{endpoint}"

                handle_headers(headers)

                # Convert body to json if hash provided
                body=body.to_json if body.is_a?(Hash)

                # Execute the request
                request=Faraday.post(url, body, headers)

                # Return
                parse_json ? JSON.parse(request.body).with_indifferent_access : request.body    

            end
            # end post



            def get(endpoint, query_parameters={}, headers={}, parse_json=true)

                # The url
                url="#{@@url_base}/#{endpoint}"

                handle_headers(headers)

                # Request
                request=Faraday.get(url, query_parameters, headers)

                # Return
                parse_json ? JSON.parse(request.body).with_indifferent_access : request.body    

            end
            # end get




        end
        # end static

    end
  end
  