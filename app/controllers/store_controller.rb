class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @now = DateTime.now.strftime("%Y-%m-%d %H:%M")
  end
end
