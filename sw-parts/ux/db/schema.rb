# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141122091414) do

  create_table "telegrams", force: true do |t|
    t.datetime "reported_on"
    t.string   "telegram_type"
    t.string   "model"
    t.string   "user"
    t.string   "user_hash"
    t.integer  "telegram_cycle_counter"
    t.string   "location"
    t.string   "group"
    t.string   "unit"
    t.string   "lan_ip"
    t.float    "ext_pm25_sensor"
    t.float    "ext_pm1_sensor"
    t.float    "int_pm25_sensor"
    t.float    "int_pm1_sensor"
    t.integer  "sensor_board_cycle_counter"
    t.integer  "ext_tacho_sensor_fan"
    t.integer  "int_tacho_sensor_fan"
    t.integer  "fan_speed_setting"
    t.integer  "fan_target_speed"
    t.float    "temperature_celsius"
    t.float    "temperature_fahrenheit"
    t.float    "humidity_percentage"
    t.integer  "tacho_primary_fan_0"
    t.integer  "tacho_primary_fan_1"
    t.integer  "tacho_primary_fan_2"
    t.integer  "tacho_primary_fan_3"
    t.string   "ip"
    t.integer  "port"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
