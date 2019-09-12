# lib/parasut/product.rb
module Parasut
  # Product
  class Product
    include Her::JsonApi::Model
    # extend Parasut::Paginated
    include_root_in_json true
    parse_root_in_json true
  end
end
