class Country < ActiveRecord::Base

	# country has many organization
	has_many :organizations

end
