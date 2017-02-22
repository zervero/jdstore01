class WelcomeController < ApplicationController
  def index
    @welcomeproducts = Product.where(:product_category_id => 1)
    @recommendproducts = Product.where(:product_category_id => 3)
  end


end
