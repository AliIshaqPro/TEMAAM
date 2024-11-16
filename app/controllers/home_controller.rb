class HomeController < ApplicationController
    def about; end
    def blog; end
    def blog_grid; end
    def blog_list; end
    def blog_single; end
    def cart; end
    def checkout; end
    def contact; end
    def error; end
    def index
      @products = Product.all
    end
    def index_2; end
    def index_light; end
    def index_2_light; end
    def login; end
    def register; end
    def shop; end
    def shop_2; end
    def shop_single; end
  end
  