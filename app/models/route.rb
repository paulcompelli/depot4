class Route < ActiveRecord::Base
  attr_accessible :finish, :inbound_code, :outbound_code, :return_route, :start
  has_many :route_details

  def self.search(search_terms)

    the_term = "%" + search_terms + "%"

    find(:all, :include => "route_details", :conditions => ["routes.start LIKE ? or routes.finish LIKE ? or route_details.stop_name LIKE ?", the_term, the_term, the_term])

  end   #DEE GOING TO TRY SEARCH FROM TUTORIALS    or route_details.stop_name LIKE ?


  #def self.search(search_query)
  #   if search_query
  #     find(:all, :conditions => ['start LIKE ?', "%#{search_query}%"])
  #    else
  #    find(:all)
  #    end
  #
  #
  #end



end
