class ApplicationController < ActionController::Base
  # 検索機能
  before_action :set_search

  def set_search
    @search = Note.ransack(params[:q]) #ransackメソッド推奨
    @search_notes = @search.result.page(params[:page])
  end
end

