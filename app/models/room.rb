class Room < ActiveRecord::Base
  validates_presence_of :name, :location, :description
  validates_length_of :name, minimum: 5, maximum: 100
end
