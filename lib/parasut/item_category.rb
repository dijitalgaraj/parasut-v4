# lib/parasut/item_category.rb
module Parasut
  # Contact
  class ItemCategory
    include Her::JsonApi::Model
    # 
    include_root_in_json true
    parse_root_in_json true
  end
end
