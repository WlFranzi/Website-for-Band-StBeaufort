class StaticPagesController < ApplicationController
  def home
  end
end

 def music
  end
end

 def contact
  end
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver
end