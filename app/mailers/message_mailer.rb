class MessageMailer < ActionMailer::Base

  default from: 'portfolio-app'

  def new_message(user, message)
    @message = message

    mail to: user.email
    mail subject: "Message from #{message.name}"
  end

end
