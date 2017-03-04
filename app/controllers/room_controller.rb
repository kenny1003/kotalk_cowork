class RoomController < ApplicationController
  
  def index
    @room = Room.all
  end
  
  def front_area
    @room = Room.all
  end
  
  def back_area
    @room = Room.all
  end
  
end