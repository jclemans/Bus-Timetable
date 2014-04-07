class Line < ActiveRecord::Base
 validates_presence_of :name
 has_and_belongs_to_many :stations
 has_many :lines_stations
 end
