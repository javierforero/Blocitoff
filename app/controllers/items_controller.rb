class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "Your item was successfully saved!"
      redirect_to @user
    else
      flash[:alert] = "Your item was not saved. Try again"
      redirect_to @user
    end
  end

  def destroy

     @user = User.find(params[:user_id])
     @item = @user.items.find(params[:id])

     if @item.destroy
       flash.now[:notice] = "Item was deleted!"
     else
       flash.now[:alert] = "Item was not deleted. Try again!"
     end

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name)
  end

end
