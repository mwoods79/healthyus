require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Meal.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Meal.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Meal.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to meal_url(assigns(:meal))
  end
  
  def test_edit
    get :edit, :id => Meal.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Meal.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Meal.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Meal.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Meal.first
    assert_redirected_to meal_url(assigns(:meal))
  end
  
  def test_destroy
    meal = Meal.first
    delete :destroy, :id => meal
    assert_redirected_to meals_url
    assert !Meal.exists?(meal.id)
  end
end
