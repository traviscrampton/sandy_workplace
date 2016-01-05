# Preview all emails at http://localhost:3000/rails/mailers/admin_notifier
class AdminNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_notifier/contact
  def contact
    AdminNotifier.contact
  end

end
