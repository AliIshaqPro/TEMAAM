class Product < ApplicationRecord
    has_one_attached :image_front
    has_one_attached :image_back
  end
  