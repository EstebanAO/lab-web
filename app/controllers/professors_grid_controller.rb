class ProfessorsGridController < ApplicationController
	def index
		if params[:search]
    		@professors = Professor.where('name LIKE ?', "%#{params[:search]}%")
        debugger
  		else
    		@professors = Professor.all
    	end
	end

	private

	def professor_params
      params.require(:professor).permit(:name, :professor_type, :search)
    end
end
