require 'singleton'

# lib/parasut/options.rb
module Parasut
  # Options
  class Options
    include Singleton

    ATTRIBUTES = [:api_base_url, :client_id, :client_secret, :username, :password, :company_id].freeze

    # Attributes
    attr_accessor *ATTRIBUTES
  end


  # Initializer
  def self.options

    instance=Options.instance

    if block_given?
      yield instance

      # Execute her setup
      Parasut.her_setup
    end

    # Try to set the defaults when needed
    instance.api_base_url = ENV['PARASUT_API_BASE_URL'] || Parasut.default_api_url if instance.api_base_url.nil?
    instance.company_id   = ENV['PARASUT_COMPANY_ID'] if instance.company_id.nil?


    instance
  end
end
