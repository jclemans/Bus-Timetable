class EditStops < ActiveRecord::Migration
  def change
    rename_column :stops, :stations_id, :station_id
    rename_column :stops, :lines_id, :line_id
    add_column :stops, :arrival, :time

  end
end
