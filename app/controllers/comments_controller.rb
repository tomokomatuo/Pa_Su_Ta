class CommentsController < ApplicationController
  before_action :set_user, only: [:create, :edit, :update]
  def create
    @comment = @user.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
        render 'index.js.erb'
      else
        format.html { redirect_to user_path(@user), notice: '投稿できませんでした...' }
        # redirect_to user_path(@user), notice: '投稿できませんでした...'
      end
  end
  def edit
    @comment = @user.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  def update
    @comment = @user.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit_error }
        end
      end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end
  
  def search
    @comments = Comment.search(params[:search])
  end


  private
  def comment_params
    params.require(:comment).permit(:user_id, :review, :rate, :search)
  end
  def set_user
    @user = User.find(params[:user_id])
  end
end
