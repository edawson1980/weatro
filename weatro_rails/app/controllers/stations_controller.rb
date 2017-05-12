class StationsController < ApplicationController

  include ActiveModel::Serialization
    ##i don't know if this goes here, or in the station model. or even in the ApplicationController, since
    ##everything else inherits from there.

    def index
      @stations = Station.all
      render json: @stations, include: :votes
    end



    def show
      @station = Station.find(params[:id])
      render json: @station, include: :votes
    end

    def create
      @station = Station.create!(station_params)
      render json: @station, include: :votes
    end

    def update
      @station = Station.find(params[:id])
      @station.update!(station_params)
      render json: @station, include: :votes
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
