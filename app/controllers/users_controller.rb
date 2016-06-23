class UsersController < ApplicationController
	def show
    @user=current_user
    @transaction_item= TransactionItem.new
	end

	def create
  	
		@user = User.new(user_params)
    flash[:notice] = "Successfully Logged In"
		if @user.save
      session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
      puts "sign up bug"
			redirect_to users_path
  	end
  end

  def update
    @user= User.find(params[:id])
    @user.update(user_params)
    @user.save
      redirect_to @user 
  end

  def destroy
    @user = User.find(params[:id])
    if @user.delete
      session[:user_id] = nil
      redirect_to welcome_index_path
    end
  end

  def edit
  	puts params.inspect
  	@user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:f_name, :l_name, :b_name, :email, :password)
  end

end
