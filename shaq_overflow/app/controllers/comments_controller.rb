class CommentsController < ApplicationController

  def create
    if request.xhr?
      comment = Comment.create(commentable_type: params[:comment][:commentable_type], commentable_id: params[:comment][:commentable_id], user_id: session[:user_id], content: params[:comment][:content])
      comment.to_json
      render json: comment
    else
      comment = Comment.new(comments_params)
      comment.commentable_id = params[:question_id]
      comment.user_id = current_user.id
      comment.save
      redirect_to "/questions/#{comment.commentable_id}"
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :user_id, :commentable_type, :commentable_id)
  end

end