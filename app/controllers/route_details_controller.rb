class RouteDetailsController < ApplicationController
  # GET /route_details
  # GET /route_details.json
  def index
    @route_details = RouteDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @route_details }
    end
  end

  # GET /route_details/1
  # GET /route_details/1.json
  def show
    @route_detail = RouteDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @route_detail }
    end
  end

  # GET /route_details/new
  # GET /route_details/new.json
  def new
    @route_detail = RouteDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @route_detail }
    end
  end

  # GET /route_details/1/edit
  def edit
    @route_detail = RouteDetail.find(params[:id])
  end

  # POST /route_details
  # POST /route_details.json
  def create
    @route_detail = RouteDetail.new(params[:route_detail])

    respond_to do |format|
      if @route_detail.save
        format.html { redirect_to @route_detail, notice: 'Route detail was successfully created.' }
        format.json { render json: @route_detail, status: :created, location: @route_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /route_details/1
  # PUT /route_details/1.json
  def update
    @route_detail = RouteDetail.find(params[:id])

    respond_to do |format|
      if @route_detail.update_attributes(params[:route_detail])
        format.html { redirect_to @route_detail, notice: 'Route detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @route_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_details/1
  # DELETE /route_details/1.json
  def destroy
    @route_detail = RouteDetail.find(params[:id])
    @route_detail.destroy

    respond_to do |format|
      format.html { redirect_to route_details_url }
      format.json { head :no_content }
    end
  end
end
