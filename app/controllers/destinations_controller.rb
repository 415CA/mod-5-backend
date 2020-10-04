class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    render json: @destinations
  end

  def show
    @destination = Destination.find(params[:id])
    render json: @destination
  end

  def create
    @destination = Destination.create(destination_params)
    render json: @destination
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    render json: @destination
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    render json: @destination
  end

  private

  def destination_params
    params.permit(:name, :latitude, :longitude, :photo)
  end


end
