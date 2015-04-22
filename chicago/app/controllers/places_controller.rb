class PlacesController < ApplicationController

  def new
    render "new"
  end
  
  def create
    Place.create(title: params["title"], photo: params["photo"], price: params["price"].to_f*100.to_i, description: params["description"])
    redirect_to "/"
  end
  
  def edit
    @place = Place.find_by(:id => params["id"])
    render "edit"
  end

  def update
    @place = Place.find_by(:id => params["id"])
    @place.title=params["title"]
    @place.photo=params["photo"]
    @place.price=params["price"].to_f*100.to_i
    @place.description=params["description"]
    @place.save
    redirect_to "/"
  end

  def review
    Review.create(place_id: params["id"], title: params["review_title"], rating: params["rating"][0].to_i, description: params["review_description"])
    redirect_to "/places/#{params["id"]}"
  end

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by(:id => params["id"])
    if @place != nil
      @reviews = Review.where(place_id:params["id"]).order(id: :desc)
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