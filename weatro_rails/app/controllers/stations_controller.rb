class StationsController < ApplicationController

  include ActiveModel::Serialization
    ##i don't know if this goes here, or in the station model. or even in the ApplicationController, since
    ##everything else inherits from there.

  def index
      @stations = Station.all

      respond_to do |format|
        format.html {render :show}
        format.json {render station.as_json({include: :votes}, only: [:locationCode, :city, :state])}
    end
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
