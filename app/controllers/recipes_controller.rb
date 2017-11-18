class RecipesController < ApplicationController
  def index
  	@searh_term1 = 'Chicken'
  	@recipes = Recipes.for(@searh_term1)
  end
end
