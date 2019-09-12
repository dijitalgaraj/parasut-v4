# lib/parasut/item_category.rb
module Parasut
  # Contact
  class ItemCategory
    include Her::JsonApi::Model
    # extend Parasut::Paginated
    include_root_in_json true
    parse_root_in_json true
  end
end
