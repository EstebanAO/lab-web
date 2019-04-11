class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def professor
    @professor = Professor.find(params[:id])
  end
 
 def show_professor
  if params[:search]
      @professors = Professor.where('name LIKE ? OR father_last_name LIKE ? OR mother_last_name LIKE ? OR professor_type LIKE ?', 
        "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
      debugger
    else
      @professors = Professor.all
    end
end

private

def professor_params
    params.require(:professor).permit(:name, :father_last_name, :mother_last_name, :professor_type, :search)
  end
end
