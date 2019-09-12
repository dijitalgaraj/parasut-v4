module Her
  module Middleware
    # ParasutParser

    # DEPRECATED: 
    #   API Version 4 uses JsonAPI 1.0 Standarts.
    #   'Her' has its own JsonApiParser
    #   No need for an additional parse class.

    # class ParasutParser < Her::Middleware::DefaultParseJSON
    #   def parse(body)
    #     json = parse_json(body)
    #     data = json

    #     data=data[:data]

    #     {
    #       data: data || {},
    #       errors: json[:errors] || [],
    #       metadata: json[:meta] || {}
    #     }
    #   end
    # end
  end
end
