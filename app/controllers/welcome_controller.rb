class WelcomeController < ApplicationController
  def index
    @welcomeproducts = Product.all 
  end
end
