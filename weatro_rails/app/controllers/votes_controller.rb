class VotesController < ApplicationController

  include ActiveModel::Serialization

  def index
    @station = Station.find(params[:station_id])
    @votes = @station.votes.order(:created_at)

    render json: @votes
  end

  def show
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])

    render json: @vote
  end

  def new
    @station = Station.find(params[:station_id])
    @vote = @station.votes.new
  end

  def create
    @station = Station.find(params[:station_id])
    @vote = @station.votes.create!(vote_params)

    if @vote.save!
      render json: @vote, notice: "Score view was successfully created.", status: :created
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def edit
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])
  end

  def update
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])
    if @vote.update!(vote_params)
      # redirect_to @vote, notice: "Score was successfully updated."
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @station = Station.find(params[:station_id])
    @vote = @station.votes.find(params[:id])
    @vote.destroy
    redirect_to station_path(@station)
  end

  private
  def vote_params
    params.require(:vote).permit(:score)
  end
end
