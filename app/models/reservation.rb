class Reservation < ActiveRecord::Base
	belongs_to :restaurants
	belongs_to :users
end
