# Preview all emails at http://localhost:3000/rails/mailers/sale_notifier
class SaleNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sale_notifier/sale
  def sale
    SaleNotifier.sale
  end

end
