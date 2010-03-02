require 'test_helper'

class MealStepsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MealSteps.new.valid?
  end
end
