class StationsController < ApplicationController

  include ActiveModel::Serialization

  def index
    @stations = Station.all
    render json: @stations
  end

  def new
    @station = Station.find(params[:station_id])
    @vote = @station.votes.new
    render json: @vote
  end

  def show
    @station = Station.find(params[:id])
    render json: @station, include: :votes
  end
end
