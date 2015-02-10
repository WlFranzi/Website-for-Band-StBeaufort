class MessageMailer < ActionMailer::Base

  default from: "Your Mailer <franziska.wittleder@gmail.com>"
  default to: "Your Name <franziska.wittleder@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end