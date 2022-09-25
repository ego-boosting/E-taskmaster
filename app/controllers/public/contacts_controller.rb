class Public::ContactsController < ApplicationController
  before_action :authenticate_user!

  def new
    if session[:contact].nil?
      @contact = Contact.new
      @contact.user_id = current_user.id
    else
      @contact = Contact.new(session[:contact])
      session.delete(:contact)
    end
  end

  # 確認画面を作成する
  # newアクションから入力内容を受け取り、
  # 送信ボタンを押されたらcreateアクションを実行。
  def create_confirm
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    session[:contact] = @contact
    if @contact.invalid?
      @contact.errors.full_messages.each do | msg |
        pp msg
      end
      flash[:alert] = "test"
      render :new
    else
      render :confirm
    end
  end

  def confirm
    if session[:contact].nil?
      redirect_to new_contact_path
    end
    @contact = Contact.new(session[:contact])
  end

  # 入力内容に誤りがあった場合、
  # 入力内容を保持したまま前のページに戻るのが当たり前になっているかと思いますが、
  # backアクションを定義することで可能となります。
  def back
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    if @contact.save
      session.delete(:contact)
      ContactMailer.contact_mail(@contact, current_user).deliver
      redirect_to done_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :new
    end
  end

  def done
  end


  private


    def contact_params
      params.require(:contact).permit(:title, :content)
    end
end
