class SaleNotifier < ApplicationMailer

  def salequestion salequestion
    @sale = Sale.find(salequestion.sale_id)
    @salequestion = salequestion

    mail to: "crampton.travis@gmail.com"
  end


end
