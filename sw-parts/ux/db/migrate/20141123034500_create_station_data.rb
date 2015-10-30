class CreateStationData < ActiveRecord::Migration
  def change
    create_table :station_data do |t|
      t.integer :aqi
      t.float :co
      t.float :co_24h
      t.integer :no2
      t.integer :no2_24h
      t.integer :o3
      t.integer :o3_24h
      t.integer :o3_8h
      t.integer :o3_8h_24h
      t.integer :pm10
      t.integer :pm10_24h
      t.integer :pm2_5
      t.integer :pm2_5_24h
      t.string :primary_pollutant
      t.string :quality
      t.integer :so2
      t.integer :so2_24h
      t.string :time_point
      t.belongs_to :station, index: true

      t.timestamps
    end
  end
end
