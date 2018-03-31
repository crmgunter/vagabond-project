class Api::CitiesController < ApplicationController
  def index
    @cities = City.all
    render json: @cities
end

def create
  @cities = City.create!(cities_params)
  render json: @cities
end

def show
  @cities = City.find(params[:id])
  render json: @cities
end

private
  def cities_params
    params.require(:cities).permit(:name, :image_url, :description)
    #//this is a private method we are creating and its saying take the cities params and require the cities column and then permit
    #//the cities to get the name, photo and description
end
end
