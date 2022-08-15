class Admin::ContactsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @contacts = Contact.where.not(user_id: nil).includes(:user).page(params[:page]).order(created_at: :desc).per(10)
    @users = User.all
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.content = params[:contact][:reply]
    ContactMailer.send_when_admin_reply_mail(@contact).deliver_now # 確認メールを送信
    # @contact.update!(replied: true)
    redirect_to admin_contacts_path
     flash[:notice] = '送信が完了しました'
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    @contacts = Contact.where.not(user_id: nil).includes([:user]).page(params[:page]).order(created_at: :desc).per(10)
    redirect_to admin_contacts_path
    flash[:alert] = '削除しました'
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :body, :reply)
  end
end