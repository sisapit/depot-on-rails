class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @now = DateTime.now.strftime("%Y-%m-%d %H:%M")
    if session[:counter].nil?
      session[:counter] = 0
    end
    @counter = session[:counter] + 1
    session[:counter] = @counter
  end
end
