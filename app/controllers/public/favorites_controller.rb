class Public::FavoritesController < ApplicationController
  before_action :authenticate_user!
  def create
    @note = Note.find(params[:note_id])
    favorite = current_user.favorites.new(note_id: @note.id)
    favorite.save
  end

  def destroy
    @note = Note.find(params[:note_id])
    favorite = current_user.favorites.find_by(note_id: @note.id)
    favorite.destroy
  end
end
