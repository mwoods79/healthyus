require 'test_helper'

class MealTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Meal.new.valid?
  end
end
