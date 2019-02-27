class EventsController < ApplicationController
  def index
    @events = Event.where.not(latitude: nil, longitude: nil)

    if params[:search].present?
      ids = params[:search][:activities]
      @events = @events.where(activity_id: ids)
    end

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
    @activities = Activity.all
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def events_params
    params.require(:event).permit(:title, :description, :address, :longitude, :latitude, :date)
  end
end
