class ProjectsController < ApplicationController

  before_action :are_you_sandy, except: [:index, :show]
  before_action :find_project, except: [:new, :create, :index]


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
  end

  def update
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

  end

  def destroy
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

  def find_project
    @project = Project.find(params[:id])
  end

end
