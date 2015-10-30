require 'test_helper'

class TelegramsControllerTest < ActionController::TestCase
  setup do
    @telegram = telegrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telegrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telegram" do
    assert_difference('Telegram.count') do
      post :create, telegram: { ext_pm1_sensor: @telegram.ext_pm1_sensor, ext_pm25_sensor: @telegram.ext_pm25_sensor, ext_tacho_sensor_fan: @telegram.ext_tacho_sensor_fan, fan_speed_setting: @telegram.fan_speed_setting, fan_target_speed: @telegram.fan_target_speed, group: @telegram.group, humidity_percentage: @telegram.humidity_percentage, int_pm1_sensor: @telegram.int_pm1_sensor, int_pm25_sensor: @telegram.int_pm25_sensor, int_tacho_sensor_fan: @telegram.int_tacho_sensor_fan, ip: @telegram.ip, lan_ip: @telegram.lan_ip, location: @telegram.location, model: @telegram.model, port: @telegram.port, reported_on: @telegram.reported_on, sensor_board_cycle_counter: @telegram.sensor_board_cycle_counter, tacho_primary_fan_0: @telegram.tacho_primary_fan_0, tacho_primary_fan_1: @telegram.tacho_primary_fan_1, tacho_primary_fan_2: @telegram.tacho_primary_fan_2, tacho_primary_fan_3: @telegram.tacho_primary_fan_3, telegram_cycle_counter: @telegram.telegram_cycle_counter, telegram_type: @telegram.telegram_type, temperature_celsius: @telegram.temperature_celsius, temperature_fahrenheit: @telegram.temperature_fahrenheit, unit: @telegram.unit, user: @telegram.user, user_hash: @telegram.user_hash }
    end

    assert_redirected_to telegram_path(assigns(:telegram))
  end

  test "should show telegram" do
    get :show, id: @telegram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telegram
    assert_response :success
  end

  test "should update telegram" do
    patch :update, id: @telegram, telegram: { ext_pm1_sensor: @telegram.ext_pm1_sensor, ext_pm25_sensor: @telegram.ext_pm25_sensor, ext_tacho_sensor_fan: @telegram.ext_tacho_sensor_fan, fan_speed_setting: @telegram.fan_speed_setting, fan_target_speed: @telegram.fan_target_speed, group: @telegram.group, humidity_percentage: @telegram.humidity_percentage, int_pm1_sensor: @telegram.int_pm1_sensor, int_pm25_sensor: @telegram.int_pm25_sensor, int_tacho_sensor_fan: @telegram.int_tacho_sensor_fan, ip: @telegram.ip, lan_ip: @telegram.lan_ip, location: @telegram.location, model: @telegram.model, port: @telegram.port, reported_on: @telegram.reported_on, sensor_board_cycle_counter: @telegram.sensor_board_cycle_counter, tacho_primary_fan_0: @telegram.tacho_primary_fan_0, tacho_primary_fan_1: @telegram.tacho_primary_fan_1, tacho_primary_fan_2: @telegram.tacho_primary_fan_2, tacho_primary_fan_3: @telegram.tacho_primary_fan_3, telegram_cycle_counter: @telegram.telegram_cycle_counter, telegram_type: @telegram.telegram_type, temperature_celsius: @telegram.temperature_celsius, temperature_fahrenheit: @telegram.temperature_fahrenheit, unit: @telegram.unit, user: @telegram.user, user_hash: @telegram.user_hash }
    assert_redirected_to telegram_path(assigns(:telegram))
  end

  test "should destroy telegram" do
    assert_difference('Telegram.count', -1) do
      delete :destroy, id: @telegram
    end

    assert_redirected_to telegrams_path
  end
end
