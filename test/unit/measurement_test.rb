require 'test_helper'

class MeasurementTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Measurement.new.valid?
  end
end
