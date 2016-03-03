class PostNotifier < ApplicationMailer

  def itemquestion itemquestion
    if itemquestion.item_type == "Project"
      @item = Project.find(itemquestion.item_id)
    else
      @item = Sale.find(itemquestion.item_id)
    end

    @itemquestion = itemquestion


    mail to: "huasnawood@gmail.com"
  end


end
