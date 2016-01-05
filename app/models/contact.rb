class Contact < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :message
  validates_presence_of :subject
  validates_presence_of :email


  after_create :send_admin_notification

  def send_admin_notification
    AdminNotifier.contact(self).deliver_now
  end
end
