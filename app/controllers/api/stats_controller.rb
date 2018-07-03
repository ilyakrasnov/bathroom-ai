class Api::StatsController < ApplicationController

  # before_action :restrict_access

  def index
    @stats = {
      usage: {  m: '70%', w: '30%'  },
      avg_time: { m: '3.4m', w: '4.3m' },
      total_time: {  m: '437h', w: '564h'  }
    }

    respond_to do |format|
      format.json { render :json => @stats }
    end
  end

  private

  def restrict_access
    render json: { error: "Not Authorized" }, status: :unauthorized unless has_access
  end

  def has_access
    params["token"] == ENV["token"]
  end
end
