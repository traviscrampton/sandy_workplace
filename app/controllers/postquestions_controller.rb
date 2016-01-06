class PostquestionsController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @postquestion = @project.postquestions.new
  end

  def create
    @project = Project.find(params[:project_id])
    @postquestion = @project.postquestions.new(postquestion_params)
    if @postquestion.save
      flash[:notice] = "Your Inquiry Has Been Sent, Talk To You Soon!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end







private

def postquestion_params
  params.require(:postquestion).permit(:name, :message, :email)
end

end
