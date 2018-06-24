class Api::RoomsController < ApplicationController

  before_action :restrict_access

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

  private

  def restrict_access
    render json: { error: "Not Authorized" }, status: :unauthorized unless has_access
  end

  def has_access
    params["token"] == ENV["token"]
  end
end
