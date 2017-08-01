class MessageNotificationMailer < ApplicationMailer
  default from: "aasd@das.com"

  def interlocutor_email
    mail(to: "olegkulakov77@gmail.com", subject: 'I am glad to talk with you')
 end
end
