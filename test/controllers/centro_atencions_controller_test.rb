require 'test_helper'

class CentroAtencionsControllerTest < ActionController::TestCase
  setup do
    @centro_atencion = centro_atencions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centro_atencions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centro_atencion" do
    assert_difference('CentroAtencion.count') do
      post :create, centro_atencion: { categoria: @centro_atencion.categoria, servicio: @centro_atencion.servicio }
    end

    assert_redirected_to centro_atencion_path(assigns(:centro_atencion))
  end

  test "should show centro_atencion" do
    get :show, id: @centro_atencion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centro_atencion
    assert_response :success
  end

  test "should update centro_atencion" do
    patch :update, id: @centro_atencion, centro_atencion: { categoria: @centro_atencion.categoria, servicio: @centro_atencion.servicio }
    assert_redirected_to centro_atencion_path(assigns(:centro_atencion))
  end

  test "should destroy centro_atencion" do
    assert_difference('CentroAtencion.count', -1) do
      delete :destroy, id: @centro_atencion
    end

    assert_redirected_to centro_atencions_path
  end
end
