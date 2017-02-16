class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart

  def current_cart
    @current_cart ||= find_cart
  end

helper_method :navbar_products
  def navbar_products
    @navbar_product ||= find_navbar_product
  end

  private

  def find_navbar_product
    products = Product.all
    return products
  end

  def find_cart
    cart = Cart.find_by(id: session[:cart_id])
    if cart.blank?
      cart = Cart.create
    end

    session[:cart_id] = cart.id
    return cart
  end

  def admin_required
    if !current_user.admin?
      redirect_to "/"
    end
  end
end
