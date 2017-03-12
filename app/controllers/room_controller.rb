class RoomController < ApplicationController
  
  def index
    @room = Room.all
  end
  
  def room_list
    @room = Room.all
  end
  
  
end