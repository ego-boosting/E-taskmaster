class Admin::SuggestsController < ApplicationController

def new
  @suggest = Suggest.new
end

def index
end

def create
  @suggest = Sugest.new
  @suggest.user_id = current_user
  if @suggest.save
    redirect_to admin_suggests_path
      flash[:notice] = "投稿完了しました"
  else
    render "new"
    flash[:alert] = "投稿ができませんでした"
  end
end


  def suggest_params
    params.require(:suggest).permit(:suggest_word, :suggestjapanese, :suggest_english)
  end
end
