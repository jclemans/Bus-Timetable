class Station < ActiveRecord::Base
 validates_presence_of :name
 has_many :lines, :through => :stops
end
