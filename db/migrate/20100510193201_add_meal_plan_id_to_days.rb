class AddMealPlanIdToDays < ActiveRecord::Migration
  def self.up
    add_column :days, :meal_plan_id, :integer
    remove_column :meal_plans, :day_id
    # Male column was added to users a couple migrations back, this updates old users.
    User.all.each do |user|
      user.male = true if user.male.nil?
    end
  end

  def self.down
    add_column :meal_plans, :day_id, :integer
    remove_column :days, :meal_plan_id
  end
end
