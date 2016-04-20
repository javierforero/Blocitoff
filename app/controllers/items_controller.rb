class ItemsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Your item was successfully saved!"
      redirect_to @user
    else
      flash[:alert] = "Your item was not saved. Try again"
      redirect_to @user
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
