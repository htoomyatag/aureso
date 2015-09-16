class Location < ActiveRecord::Base

	# location belongs to its organization
	belongs_to :organization

end
