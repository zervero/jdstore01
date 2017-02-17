class Product < ApplicationRecord

  belongs_to  :product_category
  mount_uploader :image, ImageUploader
end
