class PostNotifier < ApplicationMailer

  def postquestion postquestion
    @project = Project.find(postquestion.project_id)
    @postquestion = postquestion

    mail to: "crampton.travis@gmail.com"
  end


end
