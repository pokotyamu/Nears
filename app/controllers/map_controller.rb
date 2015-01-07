class MapController < ApplicationController
  def index
    if user_signed_in?
      @places = Place.where(username: current_user.username) 
    else
      @places = Place.all
    end
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
            marker.lat place.latitude
            marker.lng place.longitude
            marker.json({title: place.title})
    end
  end
end
