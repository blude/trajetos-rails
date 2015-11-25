class PagesController < ApplicationController
  def index
    if params[:query]
      @trips = Trip.search(params[:query])
    else
      @trips = Trip.none
    end
  end
end
