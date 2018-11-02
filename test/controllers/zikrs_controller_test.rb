require 'test_helper'

class ZikrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zikr = zikrs(:one)
  end

  test "should get index" do
    get zikrs_url
    assert_response :success
  end

  test "should get new" do
    get new_zikr_url
    assert_response :success
  end

  test "should create zikr" do
    assert_difference('Zikr.count') do
      post zikrs_url, params: { zikr: { astagfaar: @zikr.astagfaar, city: @zikr.city, country: @zikr.country, date: @zikr.date, durud_sharif: @zikr.durud_sharif, kalma_tayyaba: @zikr.kalma_tayyaba, name: @zikr.name, phone: @zikr.phone } }
    end

    assert_redirected_to zikr_url(Zikr.last)
  end

  test "should show zikr" do
    get zikr_url(@zikr)
    assert_response :success
  end

  test "should get edit" do
    get edit_zikr_url(@zikr)
    assert_response :success
  end

  test "should update zikr" do
    patch zikr_url(@zikr), params: { zikr: { astagfaar: @zikr.astagfaar, city: @zikr.city, country: @zikr.country, date: @zikr.date, durud_sharif: @zikr.durud_sharif, kalma_tayyaba: @zikr.kalma_tayyaba, name: @zikr.name, phone: @zikr.phone } }
    assert_redirected_to zikr_url(@zikr)
  end

  test "should destroy zikr" do
    assert_difference('Zikr.count', -1) do
      delete zikr_url(@zikr)
    end

    assert_redirected_to zikrs_url
  end
end
