class Cart < ApplicationRecord
   # EXAMPLE:
   #    cart = Cart.find(...)
   #    puts "This cart has #{cart.line_items.count} line items"
  has_many :line_items, dependent: :destroy
end
