class HomeController < ApplicationController
    def about; end
    def blog; end
    def blog_grid; end
    def blog_list; end
    def blog_single; end
    def cart
      @products = Product.all;
    end
    def checkout; end
    def contact; end
    def error; end
    def index
      @products = Product.all
    end
    def cart
      session[:cart] ||= {} # Ensure the cart is initialized
      product_ids = session[:cart].keys # Extract product IDs from the cart
      @products = Product.where(id: product_ids) # Fetch products in the cart
    end
    
  
    def add_to_cart
      session[:cart] ||= {}
      product_id = params[:product_id]
      quantity = params[:quantity].to_i
      session[:cart][product_id] ||= 0
      session[:cart][product_id] += quantity
      redirect_to cart_path # Or wherever you want to redirect
    end
  
    def remove_from_cart
      session[:cart].delete(params[:product_id])
      redirect_to cart_path
    end
    
    def index_2; end
    def index_light; end
    def index_2_light; end
    def login; end
    def register; end
    def shop; end
    def shop_2; end
    def destroy
      @product.destroy
      redirect_to products_path, notice: 'Product was successfully removed.'
    end
    def set_product
      @product = Product.find(params[:id])
    end
    def shop_single
      @products = Product.all;
    end

  end
  