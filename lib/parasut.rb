require 'her'
require 'json'
require 'uri'
require 'kaminari/config'
require 'kaminari/helpers/action_view_extension'
# Note: Decent kaminari versions does not contain 'kaminari/helpers/action_view_extension' file.
#       Kaminari version has to be locked to a valid one. (0.17.0 is a valid) 

require 'kaminari/helpers/paginator'
require 'kaminari/models/page_scope_methods'
require 'kaminari/models/configuration_methods'
require 'kaminari/hooks'

Kaminari::Hooks.init


# We will use parasut options to setup "her"
#   So it has to be initially available
require_relative 'parasut/options'

require_relative 'her/middleware/o_auth_provider_header'
require_relative 'her/model/relation'

# Models that are including Her::JsonApi::Model has to be required after Her initialization
def require_parasut
  require_relative 'parasut/version'
  require_relative 'parasut/product'
  require_relative 'parasut/document_status'
  require_relative 'parasut/contact'
  require_relative 'parasut/item_category'
  require_relative 'parasut/account'
  require_relative 'parasut/sales_invoice'
  require_relative 'parasut/transaction'
  require_relative 'parasut/payment'
end



# lib/parasut.rb
module Parasut

  # Parasut.options.api_base_url will override this.
  def self.default_api_url
    "https://api.parasut.com/"
  end
  

  def self.her_setup

    # Make the her setup when necessary, using options
    Her::API.setup url: "#{Parasut.options.api_base_url}/v4/#{Parasut.options.company_id}" do |config|
      # config.use Her::Middleware::ParasutParser
      config.use Her::Middleware::JsonApiParser
      config.use Faraday::Request::UrlEncoded
      config.use Her::Middleware::OAuthProviderHeader
      config.use Faraday::Adapter::NetHttp
      # config.use Faraday::Response::Logger, ActiveSupport::Logger.new(STDOUT)
    end

    # Call parasut models
    require_parasut

  end
  # end her_setup

end


