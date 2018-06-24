class RoomsController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name:ENV['user'], password: ENV['password']

  def index
    @rooms = Room.all
  end
end
