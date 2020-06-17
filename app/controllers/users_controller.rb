class UsersController < ApplicationController
  
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments
    @comment = @user.comments.build
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
   current_user.destroy
   redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :nickname, :birthday,
                                 :address, :phone_number, :image, :gender, :content,
                                 :age, :adviser, :hide_gender, :clothes_icon,
                                 :password_confirmation)
  end
end
