# Preview all emails at http://localhost:3000/rails/mailers/post_notifier
class PostNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_notifier/postquestion
  def postquestion
    PostNotifier.postquestion
  end

end
