class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :station_id
      t.integer :line_id
      t.time :arrival
    end
  end
end
