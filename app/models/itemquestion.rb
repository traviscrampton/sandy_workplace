class Itemquestion < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :message
  validates_presence_of :email

  belongs_to :item, polymorphic: true

  after_create :send_post_notification

  def send_post_notification
    PostNotifier.itemquestion(self).deliver_now
  end

end
