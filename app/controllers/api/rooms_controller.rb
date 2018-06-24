class Api::RoomsController < ApplicationController

  def index
    @rooms = Room.all.order(:id)
    respond_to do |format|
      format.json { render :json => @rooms }
    end
  end

  def occupy
    @room = Room.find params[:room_id]
    @room.occupied = true
    @room.save!
  end

  def free
    @room = Room.find params[:room_id]
    @room.occupied = false
    @room.save!
  end
end
