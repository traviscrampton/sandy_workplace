class PicturesController < ApplicationController

  before_action :load_item

  def new
    @picture = @item.pictures.new
  end

  def create
    @picture = @item.pictures.new(picture_params)
    @picture.save!
    redirect_to @item
  end

  def destroy
    @picture = @item.pictures.find(params[:id])
    @picture.destroy
    redirect_to @item
  end

  private

  def picture_params
    params.require(:picture).permit(:pic)
  end


  def load_item
    klass = [Sale, Project].detect { |c| params["#{c.name.underscore}_id"] }
    @item = klass.find(params["#{klass.name.underscore}_id"])
  end

end
