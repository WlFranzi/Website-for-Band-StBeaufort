class UserMailer < ActionMailer::Base
  default from: "franziska.wittleder@gmail.com"
end

  def contact_form(email, name, message)
	@message = message
  	mail(:from => email, 
	  		:to => 'franziska.wittleder@gmail.com', 
	  		:subject => "A new contact form message from #{name}")
  end
end