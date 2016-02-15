class MessageMailer < ActionMailer::Base

  default from: ENV["CONTACT_EMAIL_FROM"]
  default to: ENV["CONTACT_EMAIL_TO"]

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end

end
