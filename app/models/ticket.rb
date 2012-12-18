class Ticket < ActiveRecord::Base
  attr_accessible :cart_id, :direction, :finishing_bus_stop_id, :price, :random_ticket_code, :route_schedule_id, :starting_bus_stop_id, :ticket_price_id, :travel_date, :travel_time
end
