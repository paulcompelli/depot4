class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.order(:title)
    @cart = current_cart
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def search_results
    @routes = Route.search(params[:search_for_this])
    render 'search_results'
  end

end
