class StaticPagesController < ApplicationController
 
 def home
 end

 def music
 end

 def contact
 end

 def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email, 
	  	:to => 'franziska.wittleder@gmail.com', 
	  	:subject => "Huhu! A new contact form message from #{@name}", 
	  	:body => @message).deliver
 end

end

