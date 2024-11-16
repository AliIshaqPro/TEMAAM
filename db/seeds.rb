# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing products
Product.destroy_all

ActiveRecord::Base.transaction do
  5.times do |i|
    product = Product.create!(
      name: "Product #{i + 1}",
      price: rand(10..50), # Random price between $10 and $50
      original_price: rand(51..100), # Random original price between $51 and $100
      description: "This is the description for Product #{i + 1}."
    )

    # Attach images using Active Storageproduct/product-image1.webp
    front_image_path = Rails.root.join("app/assets/images/product/product-image1.webp")
    back_image_path = Rails.root.join("app/assets/images/product/product-image3.webp")

    product.image_front.attach(io: File.open(front_image_path), filename: "product-image1.webp", content_type: "image/png")
    product.image_back.attach(io: File.open(back_image_path), filename: "product-image3.webp", content_type: "image/png")
  end
end

puts "5 products created with attached images!"
