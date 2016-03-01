class SalesController < ApplicationController

  before_action :are_you_sandy, except: [:index, :show]

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
    @sale.pictures.new
  end

  def create
    @sale = Sale.new(sale_params)

    if @sale.save
      redirect_to @sale
    else
      render :new
    end
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update(sale_params)
      respond_to do |format|
        format.html {redirect_to @sale}
        format.js
      end
    else
      render :new
    end
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def destroy
    @sale = Sale.find(params[:id])
    if @sale.destroy
      redirect_to sales_path
    else
      redirect_to @sale
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:title, :description, :material, :price, :dimension, pictures_attributes: [:pic])
  end

  def are_you_sandy
    if !current_user || !current_user.admin?
      redirect_to root_path
    end
  end


end
