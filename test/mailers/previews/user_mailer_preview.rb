# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/reply
  def reply
    UserMailer.reply
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/admin
  def admin
    UserMailer.admin
  end

end
