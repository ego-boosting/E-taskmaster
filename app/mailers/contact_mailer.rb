class ContactMailer < ApplicationMailer
  def contact_mail(contact, user)
    @contact = contact
    mail to: user.email, bcc: ENV["MAIL_ADDRESS"], subject: "お問い合わせについて【自動送信】"
  end

  def send_when_admin_reply_mail(contact)
    @contact = contact
    mail to: contact.user.email
  end
end
