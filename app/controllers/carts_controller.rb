class CartsController < ApplicationController

  def clean
    current_cart.clean!
    flash[:warning] = "Successfully clean cart"
    redirect_to carts_path
  end
  
end
