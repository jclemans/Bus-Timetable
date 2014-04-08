class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.belongs_to :stations
      t.belongs_to :lines
    end
  end
end
