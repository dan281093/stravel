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
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(host: current_user)
    redirect_to event_design_path(Wicked::FIRST_STEP, event_id: @event.id)
  end

  def checkout
  end

  def search
    # FORM TO PICK ACTIVITIES
    # SUBMITS TO THE INDEX
  end

  private

  def events_params
    params.require(:event).permit(:title, :description, :address, :longitude, :latitude)
  end
end
