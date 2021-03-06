class EventsController < ApplicationController
  def index
    @events = Event.where.not(latitude: nil, longitude: nil)
    if params[:search].present?
      ids = params[:search][:activity]
      @events = @events.where(activity_id: ids)
    end

    @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude,
        infoWindow: "#{event.title}",
        image_url: helpers.asset_url('stravel-pin.png'),
        eventId: event.id
      }
   end
  end

  def show
    @event = Event.find(params[:id])
    @host = @event.host
    @upcoming_events = current_user.upcoming_events.where.not(active: false)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboards_path
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

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    @event.save!
    redirect_to dashboards_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :description, :date)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
