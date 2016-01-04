class ImagesController < ApplicationController

  def new
    @sale = Sale.find(params[:sale_id])
    @image = @sale.images.new
  end

  def create
    @sale = Sale.find(params[:sale_id])
    @image = @sale.images.new(image_params)
    if @image.save
      respond_to do |format|
        format.html {redirect_to @sale}
        format.js
      end
    else
      render :new
    end
  end

  def destroy
    @sale = Sale.find(params[:sale_id])
    @image = @sale.images.find(params[:id])
    @image.destroy

    redirect_to sale_path(@sale)
  end




private


  def image_params
    params.require(:image).permit(:pic)
  end

end
