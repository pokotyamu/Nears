class Place < ActiveRecord::Base
  geocoded_by :exp
  after_validation :geocode
end
