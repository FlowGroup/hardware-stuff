class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :area
      t.string :position_name
      t.string :station_code
      t.timestamps
    end
  end
end
