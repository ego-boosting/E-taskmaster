class Admin::SuggestsController < ApplicationController

def new
  @suggest = Suggest.new
end

def index
  @suggests = Suggest.all.page(params[:page]).per(3)

end

def create
  @suggest = Suggest.new(suggest_params)
  @suggest.admin_id = current_admin.id
  if @suggest.save
    redirect_to admin_suggests_path
      flash[:notice] = "投稿完了しました"
  else
    render "new"
    flash[:alert] = "投稿ができませんでした"
  end
end


  def suggest_params
    params.require(:suggest).permit(:suggest_word, :suggest_japanese, :suggest_english)
  end
end
