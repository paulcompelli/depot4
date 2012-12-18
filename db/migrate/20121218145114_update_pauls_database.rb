class UpdatePaulsDatabase < ActiveRecord::Migration
  def up
    drop_table :routes
    create_table :routes do |t|
      t.string :outbound_code
      t.string :inbound_code
      t.boolean :return_route
      t.string :start
      t.string :finish
      t.timestamps
    end
    create_table :route_details do |t|
      t.integer :route_id
      t.integer :stop_id
      t.string :stop_name
      t.integer :minutes_from_start
      t.integer :zone_no
      t.timestamps
    end
    create_table :tickets do |t|
      t.integer :cart_id
      t.date :travel_date
      t.time :travel_time
      t.string :starting_bus_stop_id
      t.string :finishing_bus_stop_id
      t.integer :ticket_price_id
      t.decimal :price
      t.string :random_ticket_code
      t.integer :route_schedule_id
      t.string :direction
      t.timestamps
    end
    create_table :route_schedules do |t|
      t.time :departure_time
      t.string :stop_id
      t.string :integer
      t.boolean :outbound
      t.boolean :inbound
      t.integer :capacity
      t.timestamps
    end
    create_table :ticket_prices do |t|
      t.integer :no_of_zones
      t.decimal :price
      t.timestamps
    end
  end

  def down
    drop_table :ticket_prices
    drop_table :route_details
    drop_table :routes
    drop_table :route_schedules
    drop_table :tickets
    create_table :routes do |t|
      t.string :title
      t.timestamps
    end
  end
end
