json.array!(@station_data) do |station_datum|
  json.extract! station_datum, :id, :aqi, :co, :co_24h, :no2, :no2_24h, :o3, :o3_24h, :o3_8h, :o3_8h_24h, :pm10, :pm10_24h, :pm2_5, :pm2_5_24h, :primary_pollutant, :quality, :so2, :so2_24h, :time_point, :station_id
  json.url station_datum_url(station_datum, format: :json)
end
