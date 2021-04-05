require "test_helper"

class OpinionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opinion = opinions(:one)
  end

  test "should get index" do
    get opinions_url, as: :json
    assert_response :success
  end

  test "should create opinion" do
    assert_difference('Opinion.count') do
      post opinions_url, params: { opinion: { calificacion: @opinion.calificacion, cliente: @opinion.cliente, descripcion: @opinion.descripcion, foto: @opinion.foto } }, as: :json
    end

    assert_response 201
  end

  test "should show opinion" do
    get opinion_url(@opinion), as: :json
    assert_response :success
  end

  test "should update opinion" do
    patch opinion_url(@opinion), params: { opinion: { calificacion: @opinion.calificacion, cliente: @opinion.cliente, descripcion: @opinion.descripcion, foto: @opinion.foto } }, as: :json
    assert_response 200
  end

  test "should destroy opinion" do
    assert_difference('Opinion.count', -1) do
      delete opinion_url(@opinion), as: :json
    end

    assert_response 204
  end
end
