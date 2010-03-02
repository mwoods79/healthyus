require 'test_helper'

class MeasurementsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Measurement.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Measurement.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Measurement.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to measurement_url(assigns(:measurement))
  end
  
  def test_edit
    get :edit, :id => Measurement.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Measurement.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Measurement.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Measurement.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Measurement.first
    assert_redirected_to measurement_url(assigns(:measurement))
  end
  
  def test_destroy
    measurement = Measurement.first
    delete :destroy, :id => measurement
    assert_redirected_to measurements_url
    assert !Measurement.exists?(measurement.id)
  end
end
