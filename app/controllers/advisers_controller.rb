class AdvisersController < ApplicationController
  layout 'user'
  before_action :normal_user, only: [:index]
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
    @all_ranks = User.find(Relationship.group(:followed_id).order('count(followed_id) desc').limit(3).pluck(:followed_id))
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :nickname, :birthday,
                                 :address, :phone_number, :image, :gender, :content,
                                 :age, :adviser, :hide_gender, :clothes_icon,
                                 :password_confirmation)
  end
  
  def relationship_params
    params.require(:relationship).permit(:followed_id)
  end

  def normal_user
    unless current_user.adviser?
      redirect_to user_path(current_user)
    end
  end
end
