class TransactionItemsController < ApplicationController
  
def create
    @transaction_item = TransactionItem.new(transaction_item_params)
    if @transaction_item.save
        flash[:notice] = "Transaction Saved"
        redirect_to user_path(current_user)
    else flash[:alert] = "Try Transaction Again"
        redirect_to user_path(current_user)
    end
   end

    def update
     @transaction_item = TransactionItem.find(params[:location, :date, :metal_type, :weight, :cash])
     @transaction_item.update(transaction_item: params[:location, :date, :metal_type, :weight, :cash])
     redirect_to user_path(@transaction_item.user)
  end

  def edit
     @transaction_item = TransactionItem.find(params[:location, :date, :metal_type, :weight, :cash])
  end

  def destroy
    @transaction_item = TransactionItem.find(params[:location, :date, :metal_type, :weight, :cash])
    @user = @transaction_item.user
    if @transaction_item.destroy
      redirect_to user_path(@user)
    end
  end
 
 def transaction_item_params
    params.require(:transaction_item).permit(:location, :date, :metal_type, :weight, :cash, :user_id)
  end


end