class AdvisersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :nickname, :birthday,
                                 :address, :phone_number, :image, :gender, :content,
                                 :age, :adviser, :hide_gender, :clothes_icon,
                                 :password_confirmation)
  end
end
