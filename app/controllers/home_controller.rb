class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def professor
    @professor = Professor.find(params[:id])
  end

  def show_professor
    @professors = Professor.all
  end
end
