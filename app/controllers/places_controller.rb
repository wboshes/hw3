class PlacesController < ApplicationController

  def index
    # find all Company rows
    @places = Place.all
    # render companies/index view
  end

  def show
    #   # find a Company
    @place = Place.find_by({ "id" => params["id"] })
    @posts = Post.where({"place_id" => @place["id"]})
    #   # render companies/show view with details about Company
    end

 def new
  @place = Place.new

    # render view with new Company form
  end
  
  def create
  #   # start with a new Company
  @place = Place.new
  #   # assign user-entered form data to Company's columns
  @place["name"] = params["place"]["name"]
  #   # save Company row
  @place.save
  #   # redirect user
  redirect_to "/places"
  end

end
