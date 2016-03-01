class ItemquestionsController < ApplicationController

  before_action :load_item

  def new
    @itemquestion = @item.itemquestions.new
  end

  def create
    @itemquestion = @item.itemquestions.new(itemquestion_params)
    if @itemquestion.save
      respond_to do |format|
        format.html {redirect_to @sale}
        format.js
      end
    else
      render :new
    end
  end

  private

  def itemquestion_params
    params.require(:itemquestion).permit(:name, :email, :message)
  end

  def load_item
    klass = [Sale, Project].detect { |c| params["#{c.name.underscore}_id"] }
    @item = klass.find(params["#{klass.name.underscore}_id"])
  end


end
