class Admin::ProductCategorysController < ApplicationController
  layout "admin"

  def index
    @product_categorys = ProductCategory.all
  end
end
