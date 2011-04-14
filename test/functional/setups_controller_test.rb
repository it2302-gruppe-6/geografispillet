require 'test_helper'

class SetupsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Setup.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Setup.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Setup.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to setup_url(assigns(:setup))
  end

  def test_edit
    get :edit, :id => Setup.first
    assert_template 'edit'
  end

  def test_update_invalid
    Setup.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Setup.first
    assert_template 'edit'
  end

  def test_update_valid
    Setup.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Setup.first
    assert_redirected_to setup_url(assigns(:setup))
  end

  def test_destroy
    setup = Setup.first
    delete :destroy, :id => setup
    assert_redirected_to setups_url
    assert !Setup.exists?(setup.id)
  end
end
