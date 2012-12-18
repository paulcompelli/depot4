class RouteSchedulesController < ApplicationController
  # GET /route_schedules
  # GET /route_schedules.json
  def index
    @route_schedules = RouteSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @route_schedules }
    end
  end

  # GET /route_schedules/1
  # GET /route_schedules/1.json
  def show
    @route_schedule = RouteSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @route_schedule }
    end
  end

  # GET /route_schedules/new
  # GET /route_schedules/new.json
  def new
    @route_schedule = RouteSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @route_schedule }
    end
  end

  # GET /route_schedules/1/edit
  def edit
    @route_schedule = RouteSchedule.find(params[:id])
  end

  # POST /route_schedules
  # POST /route_schedules.json
  def create
    @route_schedule = RouteSchedule.new(params[:route_schedule])

    respond_to do |format|
      if @route_schedule.save
        format.html { redirect_to @route_schedule, notice: 'Route schedule was successfully created.' }
        format.json { render json: @route_schedule, status: :created, location: @route_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @route_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /route_schedules/1
  # PUT /route_schedules/1.json
  def update
    @route_schedule = RouteSchedule.find(params[:id])

    respond_to do |format|
      if @route_schedule.update_attributes(params[:route_schedule])
        format.html { redirect_to @route_schedule, notice: 'Route schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @route_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_schedules/1
  # DELETE /route_schedules/1.json
  def destroy
    @route_schedule = RouteSchedule.find(params[:id])
    @route_schedule.destroy

    respond_to do |format|
      format.html { redirect_to route_schedules_url }
      format.json { head :no_content }
    end
  end
end
