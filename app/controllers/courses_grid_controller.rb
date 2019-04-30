class CoursesGridControllerController < ApplicationController
  def index
		@courses=Course.all
	end
end
