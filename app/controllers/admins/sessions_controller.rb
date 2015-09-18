class Admins::SessionsController < Devise::SessionsController
  	
  	layout false
 
  	def after_sign_in_path_for(admins)
		get_calculate_price_path
	end

end
