class SalequestionsController < ApplicationController

  def new
    @sale = Sale.find(params[:sale_id])
    @salequestion = @sale.salequestions.new
  end

  def create
    @sale = Sale.find(params[:sale_id])
    @salequestion = @sale.salequestions.new(salequestion_params)
    if @salequestion.save
      flash[:notice] = "Your Inquiry Has Been Sent, Talk To You Soon!"
      redirect_to sale_path(@sale)
    else
      render :new
    end
  end







private

def salequestion_params
  params.require(:salequestion).permit(:name, :message, :email)
end

end
