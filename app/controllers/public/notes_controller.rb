class Public::NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def show
    @note = Note.find(params[:id])
  end

  def remember_index
    # 覚えていないフレーズ一覧
    @notes = Note.where(complete: false)
  end

  def complete_index
     # 覚えたフレーズ一覧
    @notes = Note.where(complete: true)
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.complete = false
    if @note.save
      redirect_to remember_index_notes_path
      flash[:notice] = "投稿完了しました"
    else
      render "public/homes/top"
      flash[:alert] = "投稿ができませんでした"
    end
  end
  
  def search
  end

  def edit
  end
  
  def update
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
     flash[:notice] = "もう一度覚えよう！"
  end
  
  def destroy
  end


  private


  def note_params
    params.require(:note).permit(:word, :japanese, :english)
  end
end

