class HomeController < ApplicationController

  def index
    @products_most_reviews = Product.most_reviews
    @products_most_recent = Product.three_most_recent
    render :index
  end
end
