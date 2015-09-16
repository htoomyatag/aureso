class Organization < ActiveRecord::Base

	# organization belongs to its country
	belongs_to :country
	# organization has many locations
	has_many :location
	# type of organizations
	TYPE = ["Show room", "Service", "Dealer"]

	belongs_to :parent, :class_name => 'Organization', :foreign_key => :parent_id
	has_many :children, :class_name => 'Organization'

end
