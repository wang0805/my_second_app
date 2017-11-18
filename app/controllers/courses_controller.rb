class CoursesController < ApplicationController
  def index
  	@search_term = 'Ruby'
  	@courses = Coursera.for(@search_term)
  end
end


