class PagesController < ApplicationController
  def index
    if params[:search]
      @trips = Trip.search(params[:search])
    else
      @trips = Trip.none
    end
  end
end
