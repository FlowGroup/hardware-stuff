require 'test_helper'

class StationDataControllerTest < ActionController::TestCase
  setup do
    @station_datum = station_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:station_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create station_datum" do
    assert_difference('StationDatum.count') do
      post :create, station_datum: { aqi: @station_datum.aqi, co: @station_datum.co, co_24h: @station_datum.co_24h, no2: @station_datum.no2, no2_24h: @station_datum.no2_24h, o3: @station_datum.o3, o3_24h: @station_datum.o3_24h, o3_8h: @station_datum.o3_8h, o3_8h_24h: @station_datum.o3_8h_24h, pm10: @station_datum.pm10, pm10_24h: @station_datum.pm10_24h, pm2_5: @station_datum.pm2_5, pm2_5_24h: @station_datum.pm2_5_24h, primary_pollutant: @station_datum.primary_pollutant, quality: @station_datum.quality, so2: @station_datum.so2, so2_24h: @station_datum.so2_24h, station_id: @station_datum.station_id, time_point: @station_datum.time_point }
    end

    assert_redirected_to station_datum_path(assigns(:station_datum))
  end

  test "should show station_datum" do
    get :show, id: @station_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @station_datum
    assert_response :success
  end

  test "should update station_datum" do
    patch :update, id: @station_datum, station_datum: { aqi: @station_datum.aqi, co: @station_datum.co, co_24h: @station_datum.co_24h, no2: @station_datum.no2, no2_24h: @station_datum.no2_24h, o3: @station_datum.o3, o3_24h: @station_datum.o3_24h, o3_8h: @station_datum.o3_8h, o3_8h_24h: @station_datum.o3_8h_24h, pm10: @station_datum.pm10, pm10_24h: @station_datum.pm10_24h, pm2_5: @station_datum.pm2_5, pm2_5_24h: @station_datum.pm2_5_24h, primary_pollutant: @station_datum.primary_pollutant, quality: @station_datum.quality, so2: @station_datum.so2, so2_24h: @station_datum.so2_24h, station_id: @station_datum.station_id, time_point: @station_datum.time_point }
    assert_redirected_to station_datum_path(assigns(:station_datum))
  end

  test "should destroy station_datum" do
    assert_difference('StationDatum.count', -1) do
      delete :destroy, id: @station_datum
    end

    assert_redirected_to station_data_path
  end
end
