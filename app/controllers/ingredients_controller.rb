class IngredientsController < ApplicationController
  def index
    # @foods = Food.find(:all, :conditions => ['description LIKE ?', "%#{params[:search]}%"])
    @foods = Food.paginate :page => params[:page], :conditions => ['description LIKE ?', "%#{params[:search]}%"]
  end
  
  def show
    @food = Food.find(params[:id])
  end
end
