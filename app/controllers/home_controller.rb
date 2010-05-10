class HomeController < ApplicationController
  def index
    if current_user.family.nil?
      flash[:error] = "You do not have a family, please select one."
      redirect_to families_url
    end
    @family = current_user.family
    # @meal_plan = get_meal_plan(params[:date])
    @breakfast = random_meal("breakfast")
    @lunch = random_meal("lunch")
    @dinner = random_meal("dinner")
    @snack_one = random_meal("snack")
    @snack_two = random_meal("snack")
    @snack_three = random_meal("snack")
  end
  
  
  private 
  
  def random_meal(type)
    tags = MealTag.find_all_by_name(type)
    tags[rand(tags.size)].meal
  end
end
