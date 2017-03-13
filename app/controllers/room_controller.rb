class RoomController < ApplicationController
  
  def index
    @room = Room.all
  end
  
  def room_list
    @room = Room.all
  end
  
  def view
    @room = Room.find(params[:room_id])
  end
  
  def room_search
    @search = Room.where('title LIKE ?', "%#{params[:search]}%")
  end
  
end