class LandingController < ApplicationController
  def land
  	@curacao = true
  end

  def search
  	@chupitos = false
    
      @rooms = Room.all.order(id: :desc)

      @markers = Gmaps4rails.build_markers(@rooms) do |
      room, marker|
       marker.lat room.latitude
       marker.lng room.longitude
      end
    
  end

  def inbox
    @eljefe = true
  end

end
