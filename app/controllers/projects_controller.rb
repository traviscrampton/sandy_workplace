class ProjectsController < ApplicationController

  def index
  end

  def new
    @project = Project.new
    @project.photos.new
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
    @slides = @project.photos.length
  end

  def destroy
    @project.find(params[:id])
    @project.destroy
    redirect_to :index
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, photos_attributes: [:pic])
  end


end
