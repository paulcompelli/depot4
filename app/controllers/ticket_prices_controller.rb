class TicketPricesController < ApplicationController
  # GET /ticket_prices
  # GET /ticket_prices.json
  def index
    @ticket_prices = TicketPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ticket_prices }
    end
  end

  # GET /ticket_prices/1
  # GET /ticket_prices/1.json
  def show
    @ticket_price = TicketPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ticket_price }
    end
  end

  # GET /ticket_prices/new
  # GET /ticket_prices/new.json
  def new
    @ticket_price = TicketPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ticket_price }
    end
  end

  # GET /ticket_prices/1/edit
  def edit
    @ticket_price = TicketPrice.find(params[:id])
  end

  # POST /ticket_prices
  # POST /ticket_prices.json
  def create
    @ticket_price = TicketPrice.new(params[:ticket_price])

    respond_to do |format|
      if @ticket_price.save
        format.html { redirect_to @ticket_price, notice: 'Ticket price was successfully created.' }
        format.json { render json: @ticket_price, status: :created, location: @ticket_price }
      else
        format.html { render action: "new" }
        format.json { render json: @ticket_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ticket_prices/1
  # PUT /ticket_prices/1.json
  def update
    @ticket_price = TicketPrice.find(params[:id])

    respond_to do |format|
      if @ticket_price.update_attributes(params[:ticket_price])
        format.html { redirect_to @ticket_price, notice: 'Ticket price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ticket_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_prices/1
  # DELETE /ticket_prices/1.json
  def destroy
    @ticket_price = TicketPrice.find(params[:id])
    @ticket_price.destroy

    respond_to do |format|
      format.html { redirect_to ticket_prices_url }
      format.json { head :no_content }
    end
  end
end
