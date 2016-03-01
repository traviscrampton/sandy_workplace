class ProjectsController < ApplicationController

  before_action :are_you_sandy, except: [:index, :show]


  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.pictures.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      respond_to do |format|
        format.html {redirect_to @project}
        format.js
      end
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to projects_path
    else
      redirect_to @project
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, pictures_attributes: [:pic])
  end

  def are_you_sandy
    if !current_user || !current_user.admin?
      redirect_to root_path
    end
  end

end
