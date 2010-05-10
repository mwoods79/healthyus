module HomeHelper
#  def create_day(date = Date.today) 
#    day = Day.new(
#                   :date => date, 
#                   :breakfast => random_meal("breakfast"), 
#                   :lunch => random_meal("lunch"), 
#                   :dinner => random_meal("dinner"), 
#                   :snack_one => random_meal("snack"), 
#                   :snack_two => random_meal("snack"), 
#                   :snack_three => random_meal("snack")
#                 )
#    @meal_plan = current_user.family.meal_plan
#    @meal_plan.days << day
#    day
#   end
#
#   def random_meal(type)
#     meals = MealTags.find_all_by_name(type)
#     meals[rand(meals.size)]
#   end
#   
#   def get_meal_plan(date)
#     if current_user.family.nil?
#       flash[:error] = "the user has no family."
#       redirect_to families_url
#     else
#       if current_user.family.meal_plan.nil?
#         current_user.family.meal_plan = MealPlan.new
#       end
#
#       if current_user.family.days.nil?
#         current_user.family.meal_plan.days << create_day(date)
#         return
#       elsif current_user.family.days.find_by_date(date).nil?
#         current_user.family.meal_plan.days << create_day(date)
#         return
#       else
#         return current_user.family.meal_plan.days.find_by_date(date)
#       end
#     end
#    end
#  end
end
