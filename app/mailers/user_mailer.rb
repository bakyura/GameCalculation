class UserMailer < ActionMailer::Base
  default from: "bakyura@gmail.com"
  
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end
  
  def weekly_predictions
    mail(:to => user.email, :subject => "BetAssistant: Weekly predictions")
  end
end
