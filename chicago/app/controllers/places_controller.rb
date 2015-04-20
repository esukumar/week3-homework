class PlacesController < ApplicationController

  def new
    render "new"
  end
  
  def create
    Place.create(title: params["title"], photo: params["photo"], price: params["price"].gsub(".","").to_i, description: params["description"])
    redirect_to "/"
  end
  
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by(:id => params["id"])
    if @place != nil
      render "show"
    else
      redirect_to "/", notice: "Movie not found."
    end
  end

  def delete
    @place = Place.find_by(:id => params["id"])
    if @place != nil
      @place.delete
      redirect_to "/"
    else
      redirect_to "/", notice: "Movie not found."
    end
  end
end