class StationsController < ApplicationController
  def index
      @stations = Station.all
      render json: @stations
    end

    def show
      @station = Station.find(params[:id])
      render json: @station
    end

    def create
      @station = Station.create!(station_params)
      render json: @station
    end

    def update
      @station = Station.find(params[:id])
      @station.update!(station_params)
      render json: @station
    end

    def destroy
      @station = Station.find(params[:id])
      @station.destroy
      render nothing:true
    end

    private
    def station_params
      params.require(:station).permit(:locationCode, :state, :city, :name, :address, :photo_url)
    end
  end
