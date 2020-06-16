module SessionsHelper
  
  def current_user
    # if session[:user_id] = @user.id?
      @current_user ||= User.find_by(id: session[:user_id])
    # end
  end
  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
  end
  
  def logged_in?
    current_user.present?
  end
end
