class MealsController < ApplicationController
  def index
    @meals = current_user.meals
  end
  
  def show
    @meal = current_user.meals.find(params[:id])
  end
  
  def new
    @meal = Meal.new
  end
  
  def create
    @meal = Meal.new(params[:meal])
    @meal.user_id = current_user.id
    if @meal.save
      flash[:notice] = "#{current_user.username}, Successfully created a meal."
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
      flash[:notice] = "#{current_user.username}, Successfully updated a meal."
      redirect_to @meal
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    flash[:notice] = "#{current_user.username}, Successfully destroyed a meal."
    redirect_to meals_url
  end
end