class UserMailer < ActionMailer::Base
  default from: "jaynev+twobeeadmin@gmail.com"

  def welcome_email (user)
  	@user = user
  	mail( :to => user.email, :subject => "Thanks for joining Two Bees!" )
  end

end