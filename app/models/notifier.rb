class Notifier < ActionMailer::Base
default_url_options[:host] = "calendry.com"

  def password_reset_instructions(user)
    subject "Calendry password reset instructions"
    from    "Calendry development team"
    recipients  user.email
    sent_on Time.now
    body  :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end  

end
