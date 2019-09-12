# lib/parasut/account.rb
module Parasut
  # Account
  class Account
    include Her::JsonApi::Model
    # extend Parasut::Paginated
    include_root_in_json true
    parse_root_in_json true

    # Relations
    has_many :transactions
  end
end
