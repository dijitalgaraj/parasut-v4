# lib/parasut/contact.rb
module Parasut
  # Contact
  class Contact
    include Her::JsonApi::Model


    # Relations
    has_many :outstanding_payments, class_name: 'Payment'
    has_many :past_transactions, class_name: 'Transaction'
  end
end
