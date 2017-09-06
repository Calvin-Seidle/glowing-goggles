class UserMailer < ApplicationMailer

  def reply(user)
    @user = user
    @greeting = "Hello World!"    
    mail to: user.email
  end

  def admin(user)
     @user = user
    @greeting = "Hello World!"
    mail to: "calvinseidle.webdev@gmail.com"
  end
end
