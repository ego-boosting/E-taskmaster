class Public::NotesController < ApplicationController
  before_action :authenticate_user!

  def new
    @note = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def remember_index
    # 覚えていないフレーズ一覧
    @notes = Note.where(user_id: current_user.id).where(complete: false).page(params[:page]).per(9).order('created_at DESC')
  end

  def complete_index
     # 覚えたフレーズ一覧
    @notes = Note.where(user_id: current_user.id).where(complete: true).page(params[:page]).per(9).order('created_at DESC')
  end

  def index
    # すべてのuserの一覧
    @notes = Note.all.page(params[:page]).per(10).order('created_at DESC')
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.complete = false
    if @note.save
      redirect_to remember_index_notes_path
      flash[:notice] = "投稿完了しました"
    else
      # render "public/homes/top"
      flash[:alert] = "投稿ができませんでした"
      redirect_to request.referrer, flash: { error: @note.errors.full_messages }
    end
  end

  def done
    # フレーズを覚えたに更新する
    note = Note.find(params[:id])
    note.complete = true
    note.save
    redirect_to complete_index_notes_path
    flash[:notice] = "その調子！"
  end

  def forget
     # フレーズを忘れたに更新する
     note = Note.find(params[:id])
     note.complete = false
     note.save
     redirect_to remember_index_notes_path
     flash[:alert] = "もう一度覚えよう！"
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to note_path
      flash[:notice] = "更新が完了しました。"
    else
      render "edit"
      flash[:alert] = "更新できませんでした。"
    end
  end


  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to remember_index_notes_path
    flash[:alert] = "削除しました！"
  end

  # searchは、appllication_controller.rbに記述



  private


  def note_params
    params.require(:note).permit(:word, :japanese, :english)
  end
end

