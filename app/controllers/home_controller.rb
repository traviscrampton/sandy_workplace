class HomeController < ApplicationController

  def index
    @projects = Project.all[0..5]
  end

  def about
  end


end
