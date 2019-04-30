class CoursesGridControllerController < ApplicationController
  def index
		@links=Link.all
	end
end
