#!/usr/bin/env ruby

require 'json'

def save_data raw
  list = JSON.parse(raw)

  list.each do |station|
    station["aqi"]
    station["area"]
    station["co"]
    station["co_24h"]
    station["no2"]
    station["no2_24h"]
    station["o3"]
    station["o3_24h"]
    station["o3_8h"]
    station["o3_8h_24h"]
    station["pm10"]
    station["pm10_24h"]
    station["pm2_5"]
    station["pm2_5_24h"]
    station["position_name"]
    station["primary_pollutant"]
    station["quality"]
    station["so2"]
    station["so2_24h"]
    station["station_code"]
    station["time_point"]
  end
end
