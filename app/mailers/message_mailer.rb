class MessageMailer < ActionMailer::Base

  default from: 'portfolio-app'

  def new_message(email, message, from_page)
    @message = message

    mail to: email
    mail subject: "Message from #{message.name} at #{from_page}"
  end

end
