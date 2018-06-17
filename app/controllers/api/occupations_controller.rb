class Api::OccupationsController < ApplicationController

  def index
    @rooms = Room.select("id, name, occupied").all
    respond_to do |format|
      format.json { render :json => @rooms }
    end
  end
end
