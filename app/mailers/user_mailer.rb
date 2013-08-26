class UserMailer < ActionMailer::Base
  default from: "sendtestproj@gmail.com"
  default to: "sendtestproj@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def contact_message(message)
    @message = message

    mail subject: "Web Inquiry"
  end
end
