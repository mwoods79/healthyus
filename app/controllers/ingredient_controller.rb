class IngredientController < ApplicationController
  
  def index
    @ingredients = Ingredient.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
  end

  def ingredienst_for_lookup
    
  end


end
