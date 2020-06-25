class TopsController < ApplicationController
  layout 'top'
  before_action :limited_use, only: [:index]
  def index
  end
  private
  def limited_use
    if current_user.present?
      redirect_to user_path(current_user)
    end
  end
end
