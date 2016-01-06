class SaleNotifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.contact.subject
  #
  def salequestion salequestion
    @sale = Sale.find(salequestion.sale_id) 
    @salequestion = salequestion

    mail to: "crampton.travis@gmail.com"
  end


end
