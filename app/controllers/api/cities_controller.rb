class Api::CitiesController < ApplicationController
  def index
    @cities = City.all
    render json: @cities
end

def create
  @city = City.create!(city_params)
  render json: @city
end

def show
  @city = City.find(params[:id])
  render json: @city
end

private
  def cities_params
    params.require(:city).permit(:name, :image_url, :description)
    #//this is a private method we are creating and its saying take the cities params and require the cities column and then permit
    #//the cities to get the name, photo and description
end
end
