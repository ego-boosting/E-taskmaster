class Public::CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @note = Note.find(params[:note_id])
    @comment = current_user.comments.new(comment_params)
    @comment.note_id = @note.id
    if @comment.save
      flash[:notice] = "コメントを送信しました"
    else 
      flash[:notice] = nil
    end
    # @comment = Comment.new
    # redirect_to share_show_note_path(note)
  end



  def destroy
    @note = Note.find(params[:note_id])
    Comment.find(params[:id]).destroy
    @comment = Comment.new
    # redirect_to share_show_note_path(params[:note_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
