class Events::AttendeesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @attendees = @event.attendees
  end

  def show
    @event = Event.find(params[:event_id])
    @attendee = Attendee.find(params[:id])
  end

  def create
    @event = Event.find(params[:event_id])
    @attendee = Attendee.new(user_id: current_user.id, event_id: @event.id, status: 'pending')
    @attendee.save
    redirect_to dashboards_path
  end

  def update
    if params[:query]
      @attendee = Attendee.find(params[:id])
      if params[:query] == 'Decline'
        @attendee.update_attribute(:status, 'declined')
      else
        @attendee.update_attribute(:status, 'accepted')
      end
      redirect_to event_attendees_path(@attendee.event)
    else
      render :show
    end
  end
end
