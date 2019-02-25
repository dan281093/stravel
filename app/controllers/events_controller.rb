class EventsController < ApplicationController
  def index
    @events = Event.where.not(latitude: nil, longitude: nil)
    @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude
      }
    end
  end

  def show
  end

  def checkout
  end

  def create
    @events = Event.new(events_params)
    if @event.save
      redirect_to events_path
    else
      render :new
  end


  private

  def events_params
    params.require(:event).permit(:title, :description, :address, :longitude, :latitude)
  end
end
