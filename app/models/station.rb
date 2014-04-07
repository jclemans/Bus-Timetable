class Station < ActiveRecord::Base
 validates_presence_of :name
 has_and_belongs_to_many :lines
 has_many :lines_stations
end
