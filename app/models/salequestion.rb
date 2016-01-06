class Salequestion < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :message
  validates_presence_of :email

  belongs_to :sale

  after_create :send_sale_notification

  def send_sale_notification
    SaleNotifier.salequestion(self).deliver_now
  end
end
