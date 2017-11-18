class RecipesController < ApplicationController
  def index
  	@searh_term1 = params[:looking_for] || 'Chicken'
  	@recipes = Recipes.for(@searh_term1)
  end
end
