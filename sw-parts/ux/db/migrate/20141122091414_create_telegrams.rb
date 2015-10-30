class CreateTelegrams < ActiveRecord::Migration
  def change
    create_table :telegrams do |t|
      t.timestamp :reported_on
      t.string :telegram_type
      t.string :model
      t.string :user
      t.string :user_hash
      t.integer :telegram_cycle_counter
      t.string :location
      t.string :group
      t.string :unit
      t.string :lan_ip
      t.float :ext_pm25_sensor
      t.float :ext_pm1_sensor
      t.float :int_pm25_sensor
      t.float :int_pm1_sensor
      t.integer :sensor_board_cycle_counter
      t.integer :ext_tacho_sensor_fan
      t.integer :int_tacho_sensor_fan
      t.integer :fan_speed_setting
      t.integer :fan_target_speed
      t.float :temperature_celsius
      t.float :temperature_fahrenheit
      t.float :humidity_percentage
      t.integer :tacho_primary_fan_0
      t.integer :tacho_primary_fan_1
      t.integer :tacho_primary_fan_2
      t.integer :tacho_primary_fan_3
      t.string :ip
      t.integer :port

      t.timestamps
    end
  end
end
