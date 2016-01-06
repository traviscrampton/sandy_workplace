class SalequestionsController < ApplicationController

  def new
    @sale = Sale.find(params[:sale_id])
    @salequestion = @sale.salequestions.new
  end

  def create
    @sale = Sale.find(params[:sale_id])
    @salequestion = @sale.salequestions.new(salequestion_params)
    if @salequestion.save
      redirect_to root_path
    else
      render :new
    end
  end







private

def salequestion_params
  params.require(:salequestion).permit(:name, :message, :email)
end

end
