module SessionsHelper
	def current_user
		puts "Maaaannnn"
		puts params.inspect
		@current_user ||=User.find_by(id:
			session[:user_id])
end
end