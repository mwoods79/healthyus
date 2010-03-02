require 'test_helper'

class MealTagsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => MealTag.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    MealTag.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    MealTag.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to meal_tag_url(assigns(:meal_tag))
  end
  
  def test_edit
    get :edit, :id => MealTag.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    MealTag.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MealTag.first
    assert_template 'edit'
  end
  
  def test_update_valid
    MealTag.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MealTag.first
    assert_redirected_to meal_tag_url(assigns(:meal_tag))
  end
  
  def test_destroy
    meal_tag = MealTag.first
    delete :destroy, :id => meal_tag
    assert_redirected_to meal_tags_url
    assert !MealTag.exists?(meal_tag.id)
  end
end
