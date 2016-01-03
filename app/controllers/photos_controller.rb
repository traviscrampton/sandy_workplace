class PhotosController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @photo = @project.photos.new
  end

  def create
    @project = Project.find(params[:project_id])
    @photo = @project.photos.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.html {redirect_to @project}
        format.js
      end
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @photo = @project.photos.find(params[:id])
    @photo.destroy

    redirect_to project_path(@project)
  end




private


  def photo_params
    params.require(:photo).permit(:pic)
  end

end
