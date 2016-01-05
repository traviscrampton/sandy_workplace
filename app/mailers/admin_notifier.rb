class AdminNotifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.contact.subject
  #
  def contact contact
    @contact = contact

    mail to: "crampton.travis@gmail.com"
  end
end
