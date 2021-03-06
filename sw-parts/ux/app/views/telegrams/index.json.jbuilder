json.array!(@telegrams) do |telegram|
  json.extract! telegram, :id, :reported_on, :telegram_type, :model, :user, :user_hash, :telegram_cycle_counter, :location, :group, :unit, :lan_ip, :ext_pm25_sensor, :ext_pm1_sensor, :int_pm25_sensor, :int_pm1_sensor, :sensor_board_cycle_counter, :ext_tacho_sensor_fan, :int_tacho_sensor_fan, :fan_speed_setting, :fan_target_speed, :temperature_celsius, :temperature_fahrenheit, :humidity_percentage, :tacho_primary_fan_0, :tacho_primary_fan_1, :tacho_primary_fan_2, :tacho_primary_fan_3, :ip, :port
  json.url telegram_url(telegram, format: :json)
end
