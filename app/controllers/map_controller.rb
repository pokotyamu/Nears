class MapController < ApplicationController
  def index
    @places = Place.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
            marker.lat place.lat
            marker.lng place.lon
            marker.infowindow user.description
            marker.json({title: place.title})
    end
  end
end
