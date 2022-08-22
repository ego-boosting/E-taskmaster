class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts = Contact.where.not(user_id: nil).includes(:user).page(params[:page]).order(created_at: :desc).per(8)
    @users = User.all
  end

  def show
    @contact = Contact.find(params[:id])
    render 'edit'
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.content = params[:contact][:reply]
    if @contact.update(replied: true)
    ContactMailer.send_when_admin_reply_mail(@contact).deliver_now # 確認メールを送信
    redirect_to admin_contacts_path
     flash[:notice] = '返信が完了しました'
    else
     flash[:alert] = '返信ができませんでした'
     render 'edit'
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    @contacts = Contact.where.not(user_id: nil).includes([:user]).page(params[:page]).order(created_at: :desc).per(8)
    redirect_to admin_contacts_path
    flash[:alert] = '削除しました'
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :body, :reply)
  end
end