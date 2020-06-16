class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :nickname, :birthday,
                                 :address, :phone_number, :icon, :gender, :content,
                                 :age, :adviser, :hide_gender, :clothes_image,
                                 :password_confirmation)
  end
end
