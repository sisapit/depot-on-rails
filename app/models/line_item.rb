class LineItem < ApplicationRecord
  # The belongs_to() method defines an accessor method — in this case, carts() and products() — but
  # more importantly it tells Rails that rows in line_items are the children of rows in carts and
  # products. No line item can exist unless the corresponding cart and product rows exist.
  #
  # Rule of thumb for where to put belongs_to declarations: If a table has any columns whose values
  # consist of ID values for another table, the corresponding model should have a belongs_to for each.
  # EXAMPLE:
  #    li = LineItem.find(...)
  #    puts "This line item is for #{li.product.title}"
  belongs_to :product
  belongs_to :cart
end
