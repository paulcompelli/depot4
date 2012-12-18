class RouteSchedule < ActiveRecord::Base
  attr_accessible :capacity, :departure_time, :inbound, :integer, :outbound, :stop_id
end
