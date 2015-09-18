class Admins::RegistrationsController < Devise::RegistrationsController
  	
  	def after_sign_in_path_for(admins)
	  	get_calculate_price_path
  	end

end



