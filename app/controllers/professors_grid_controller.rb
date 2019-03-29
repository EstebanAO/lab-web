class ProfessorsGridController < ApplicationController
	def index
		@professors=Professor.all
	end
end
