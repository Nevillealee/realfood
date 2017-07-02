class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@realfoodapp.com"
  layout 'mailer'
  
  def comment_added
    mail(to: "nevillealee@gmail.com", subject: "A comment has been added to your place")
  end
  
end
