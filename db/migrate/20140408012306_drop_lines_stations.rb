class DropLinesStations < ActiveRecord::Migration
  def change
    drop_table :lines_stations
  end
end
