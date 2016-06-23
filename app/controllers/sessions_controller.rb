class SessionsController < ApplicationController
	
  def destroy
     session[:user_id] = nil
     redirect_to root_path
	end

	def new
		# redirect_to login_path
	end

	def create
    
    puts "in cREATE THE EMAIL ISSSSS"
    puts params[:email]
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id  
      flash[:notice] = "Successfully Logged In"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Not Logged In"
      redirect_to welcome_index_path
    end
  end

end
