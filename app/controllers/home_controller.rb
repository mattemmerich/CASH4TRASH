class HomeController < ApplicationController
  def index	
  	@aluminum = Metal::Client.new.aluminium_api_response
  	# byebug
  	# byebug
  	@alum_data = @aluminum['data']
	
  end


  def show
  end
 
end
