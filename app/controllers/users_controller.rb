class UsersController < ApplicationController
  layout 'user'
  before_action :set_user, only: [:show, :update, :edit, :destroy]
  before_action :ensure_correct_user, only: [:edit, :update]
  before_action :adviser_user, only: [:index]
  
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.image = "default.jpg"
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @comments = @user.comments
    @comment = @user.comments.build
  end

  def edit
  end

  def destroy
   @user.destroy
   redirect_to new_user_path
  end

  def update
    if @user.update(user_params)
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
 
  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :nickname, :birthday,
                                 :address, :phone_number, :image, :gender, :content,
                                 :age, :adviser, :hide_gender, :clothes_icon,
                                 :password_confirmation, :image_cache)
  end

  def set_user
    @user = User.find(params[:id])
  end
  
  def ensure_correct_user
    if current_user.id !=  params[:id].to_i
      redirect_to user_path(current_user)
    end
  end

  def adviser_user
    if current_user.adviser? 
      redirect_to user_path(current_user)
    end
  end
end
