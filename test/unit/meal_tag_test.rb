require 'test_helper'

class MealTagTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MealTag.new.valid?
  end
end
