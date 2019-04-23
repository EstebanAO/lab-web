class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def professors
    @professor = Professor.find(params[:id])
  end

  def show_professor
    # debugger
    if params[:professor_type] == "Catedra" then
      search_i = 1
    elsif params[:professor_type] == "Planta"
      search_i = 0
    elsif  params[:professor_type] == "All"
      search_i = 2
    end
    @ids = User.all.where(admin: false).map{|user| user.professor.id}
    if params[:search] && search_i != 2
      @professors = Professor.where(id: @ids).where('(lower(name) LIKE ? OR lower(father_last_name) LIKE ? OR lower(mother_last_name) LIKE ? ) and professor_type = ?',
        "%#{params[:search].downcase}%", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%", search_i)
    elsif params[:search] && search_i == 2
      @professors = Professor.where(id: @ids).where('lower(name) LIKE ? OR lower(father_last_name) LIKE ? OR lower(mother_last_name) LIKE ? ',
        "%#{params[:search].downcase}%", "%#{params[:search].downcase}%", "%#{params[:search].downcase}%")
    else
      @professors = Professor.where(id: @ids)
    end
  end

  def courses
    @course = Course.all
  end

  def show_course
    if params[:status] == "Activo" then
      active_i = 1
    elsif params[:status] == "No activo"
      active_i = 0
    end
    if params[:search] && active_i == 1
      @courses = Course.where('(lower(name) LIKE ? ) and status = ?', "%#{params[:search].downcase}%", active_i)
    elsif params[:search] && active_i == 0
      @courses = Course.where('(lower(name) LIKE ? ) and status = ?', "%#{params[:search].downcase}%", active_i)
    else
      @courses = Course.all
    end
  end

private

  def professor_params
    params.require(:professor).permit(:name, :father_last_name, :mother_last_name, :search, :professor_type)
  end

  def course_params
    params.require(:course).permit(:name, :search, :status)
  end
end

