require 'test_helper'

class MealStepsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => MealSteps.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    MealSteps.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    MealSteps.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to meal_steps_url(assigns(:meal_steps))
  end
  
  def test_edit
    get :edit, :id => MealSteps.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    MealSteps.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MealSteps.first
    assert_template 'edit'
  end
  
  def test_update_valid
    MealSteps.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MealSteps.first
    assert_redirected_to meal_steps_url(assigns(:meal_steps))
  end
  
  def test_destroy
    meal_steps = MealSteps.first
    delete :destroy, :id => meal_steps
    assert_redirected_to meal_steps_url
    assert !MealSteps.exists?(meal_steps.id)
  end
end
