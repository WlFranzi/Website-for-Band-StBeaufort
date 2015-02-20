ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'franzisksa.wittleder@gmail.com', :subject => "Welcome to My Awesome Site", :body => 'I am the email body.').deliver


 def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email, 
	  	:to => 'franziska.wittleder@gmail.com', 
	  	:subject => "A new contact form message from #{@name}", 
	  	:body => @message).deliver
end