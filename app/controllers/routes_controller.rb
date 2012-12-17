class RoutesController < ApplicationController
  def index
    @routes = Route.all
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @routes }
    end
  end

  def show
    @route = Route.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @route }
    end
  end
end

