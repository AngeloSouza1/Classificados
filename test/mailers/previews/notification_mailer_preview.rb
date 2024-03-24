# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = { :address => '127.0.0.1', :port => 1025 }
  # config.action_mailer.raise_delivery_errors = false
  def welcome
    NotificationMailer.welcome "Angelo", "angelo@teste.com"
  end

end
