class Postquestion < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :message
  validates_presence_of :email

  belongs_to :project

  after_create :send_project_notification

  def send_project_notification
    PostNotifier.postquestion(self).deliver_now
  end
end
