class Public::HomesController < ApplicationController
  def top
    @note = Note.new
    # margin-bottomを効かせないための条件を渡す
    @top = true
    
    
    @suggest = Suggest.last
  end
end
