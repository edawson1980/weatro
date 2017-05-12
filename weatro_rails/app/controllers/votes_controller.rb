class VotesController < ApplicationController

  def index
     @votes = Vote.all
     render json: @votes
   end


  def show
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @vote, include: :station}
    end
  end


  def new
    @station = Station.find(params[:station_id])
    @vote = @station.votes.new
  end

  def create
    @station = Station.find(params[station_id])
    @vote = @station.votes.create!(vote_params) #here we could add .create!(vote_params.merge(user: current_user)) if we are going to use user auth. later
    respond_to do |format|
      if @vote.save!
        format.html {redirect_to @station, notice: "Score view was successfully created."}
        format.json {render json: @vote, status: :created}
      else
        format.html {render :new}
        format.json {render json: @vote.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])
  end

  def update
    @station = Station.find(params[:station_id])
    @vote = Vote.find(params[:id])
    respond_to do |format|
      if @vote.update!(vote_params)
        format.html {redirect_to @vote, notice: "Score was successfully updated."}
        format.json {render json: @vote}
      else
        format.html {render :new}
        format.json {render json: @vote.errors, status: :unprocessable_entity}
      end
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
