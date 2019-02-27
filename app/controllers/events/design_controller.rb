class Events::DesignController < ApplicationController
  include Wicked::Wizard

  before_action :set_event, only: [:show, :update]

  steps :add_activity, :add_details

  def show
    case step
    when :add_activity
      @activities = Activity.all
    end
    render_wizard
  end

  def update
    case step
    when :add_details
      @event.active = true
    end
    @event.update_attributes(event_params)
    render_wizard @event
  end

  def finish_wizard_path
    event_path(@event)
  end

  def create
    @event = Event.create(host: current_user)
    redirect_to wizard_path(steps.first, event_id: @event.id)
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title, :address, :description, :activity_id, :date)
  end
end
