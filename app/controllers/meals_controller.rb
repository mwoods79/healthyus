class MealsController < ApplicationController
  
  before_filter :check_credentials, :except => [:index, :show]
  
  def index
    @meals = Meal.all
  end
  
  def show
    @meal = Meal.find(params[:id])
  end
  
  def new
    @meal = Meal.new
    2.times { @meal.ingredients.build }
    @meal.meal_steps.build
    @meal.meal_tags.build
  end
  
  def create
    @meal = Meal.new(params[:meal])
    @meal.user_id = current_user.id
    if @meal.save
      flash[:notice] = "Successfully created meal."
      redirect_to @meal
    else
      render :action => 'new'
    end
  end
  
  def edit
    @meal = Meal.find(params[:id])
  end
  
  def update
    @meal = Meal.find(params[:id])
    if @meal.update_attributes(params[:meal])
      flash[:notice] = "Successfully updated meal."
      redirect_to @meal
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    flash[:notice] = "Successfully destroyed meal."
    redirect_to meals_url
  end
  
  private
  
  def check_credentials
    unless current_user.is_admin?
      redirect_to root_url
    end
  end
end
